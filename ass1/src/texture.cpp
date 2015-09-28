#include "texture.h"

#include <assert.h>
#include <iostream>
#include <algorithm>

using namespace std;

namespace CMU462 {

inline void uint8_to_float( float dst[4], unsigned char* src ) {
  uint8_t* src_uint8 = (uint8_t *)src;
  dst[0] = src_uint8[0] / 255.f;
  dst[1] = src_uint8[1] / 255.f;
  dst[2] = src_uint8[2] / 255.f;
  dst[3] = src_uint8[3] / 255.f;
}

inline void float_to_uint8( unsigned char* dst, float src[4] ) {
  uint8_t* dst_uint8 = (uint8_t *)dst;
  dst_uint8[0] = (uint8_t) ( 255.f * max( 0.0f, min( 1.0f, src[0])));
  dst_uint8[1] = (uint8_t) ( 255.f * max( 0.0f, min( 1.0f, src[1])));
  dst_uint8[2] = (uint8_t) ( 255.f * max( 0.0f, min( 1.0f, src[2])));
  dst_uint8[3] = (uint8_t) ( 255.f * max( 0.0f, min( 1.0f, src[3])));
}

void Sampler2DImp::generate_mips(Texture& tex, int startLevel) {

  // NOTE(sky):
  // The starter code allocates the mip levels and generates a level
  // map simply fills each level with a color that differs from its
  // neighbours'. The reference solution uses trilinear filtering
  // and it will only work when you have mipmaps.

  // Task 7: Implement this

  // check start level
  if ( startLevel >= tex.mipmap.size() ) {
    std::cerr << "Invalid start level";
  }

  // allocate sublevels
  int baseWidth  = tex.mipmap[startLevel].width;
  int baseHeight = tex.mipmap[startLevel].height;
  int numSubLevels = (int)(log2f( (float)max(baseWidth, baseHeight)));

  numSubLevels = min(numSubLevels, kMaxMipLevels - startLevel - 1);
  tex.mipmap.resize(startLevel + numSubLevels + 1);

  int width  = baseWidth;
  int height = baseHeight;
  for (int i = 1; i <= numSubLevels; i++) {

    MipLevel& level = tex.mipmap[startLevel + i];

    // handle odd size texture by rounding down
    width  = max( 1, width  / 2); assert(width  > 0);
    height = max( 1, height / 2); assert(height > 0);

    level.width = width;
    level.height = height;
    level.texels = vector<unsigned char>(4 * width * height);

  }

  // fill all 0 sub levels with interchanging colors
  //Color colors[3] = { Color(1,0,0,1), Color(0,1,0,1), Color(0,0,1,1) };
  for(size_t i = 1; i < tex.mipmap.size(); ++i) {

    //Color c = colors[i % 3];
    MipLevel& mip_prev = tex.mipmap[i - 1];
    MipLevel& mip = tex.mipmap[i];

    uint32_t red, gre, blu;
    size_t row, col;
    int pre_w = mip_prev.width;

    /*
    printf("pre_w = %d\n", pre_w);
    printf("width: = %zu\n", mip.width);
    */

    for(size_t i = 0; i < mip.width * mip.height; i++) {
      red = 0.0;
      gre = 0.0;
      blu = 0.0;
      row = i / mip.width;
      col = i % mip.width;
      for (size_t r = row * 2; r < (row + 1) * 2; r++) {
        for (size_t c = col * 2; c < (col + 1) * 2; c++) {
          red += mip_prev.texels[4 * (r * pre_w + c) + 0];
          gre += mip_prev.texels[4 * (r * pre_w + c) + 1];
          blu += mip_prev.texels[4 * (r * pre_w + c) + 2];
        }
      }
      float ave_red = (float) red / 4;
      float ave_gre = (float) gre / 4;
      float ave_blu = (float) blu / 4;
      float alp = 1.0;

      mip.texels[4 * i    ] = (uint8_t) (ave_red);
      mip.texels[4 * i + 1] = (uint8_t) (ave_gre);
      mip.texels[4 * i + 2] = (uint8_t) (ave_blu);
      mip.texels[4 * i + 3] = (uint8_t) (alp * 255);
    }
  }
}

Color Sampler2DImp::sample_nearest(Texture& tex,
                                   float u, float v,
                                   int level) {
  // Task ?: Implement nearest neighbour interpolation

  // return magenta for invalid level
  if (level < 0 or level >= kMaxMipLevels) {
    return Color(1,0,1,1);
  }
  MipLevel& tex_space = tex.mipmap[level];
  float r, g, b;
  float su = (size_t) floor(tex_space.width * u);
  float sv = (size_t) floor(tex_space.height * v);
  //printf("su: %f, sv: %f\n", su, sv);

  if ( su < 0 | su >= tex.width ) return Color::White;
  if ( sv < 0 | sv >= tex.height) return Color::White;

  r = tex_space.texels[4 * (sv + su * tex_space.width) + 0] / 255.0;
  g = tex_space.texels[4 * (sv + su * tex_space.width) + 1] / 255.0;
  b = tex_space.texels[4 * (sv + su * tex_space.width) + 2] / 255.0;

  return Color(r, g, b, 1);

}

float bilinearInterp( float c00, float c10, float c01, float c11,
                      float x, float y) {
  /*
  c00 = 0.0;
  c10 = 1.0;
  c01 = 1.0;
  c11 = 2.0;
  x = 0.5;
  y = 0.5;
  */

  float c0 = c00 + x * (c10 - c00);
  float c1 = c01 + x * (c11 - c01);
  float c = c0 + y * (c1 - c0);
  //printf("c0 = %f, c1 = %f, c = %f\n", c0, c1, c);
  return c;
}

Color Sampler2DImp::sample_bilinear(Texture& tex,
                                    float u, float v,
                                    int level) {

  // Task ?: Implement bilinear filtering
  if (level < 0 or level >= kMaxMipLevels) {
    return Color(1,0,1,1);
  }
  MipLevel& tex_space = tex.mipmap[level];
  u = (tex_space.width * u);
  v = (tex_space.width * v);
  size_t floor_u = (size_t) floor(u);
  size_t floor_v = (size_t) floor(v);
  size_t ceil_u  = (size_t) ceil(u);
  size_t ceil_v  = (size_t) ceil(v);

  float du = u - floor(u);
  float dv = v - floor(v);
  float r_00, g_00, b_00, r_10, g_10, b_10, r_01, g_01, b_01, r_11, g_11, b_11;
  float r, g, b;

  r_00 = tex_space.texels[4 * (floor_v + floor_u * tex_space.width) + 0] / 255.0;
  g_00 = tex_space.texels[4 * (floor_v + floor_u * tex_space.width) + 1] / 255.0;
  b_00 = tex_space.texels[4 * (floor_v + floor_u * tex_space.width) + 2] / 255.0;

  r_10 = tex_space.texels[4 * (floor_v + ceil_u * tex_space.width) + 0] / 255.0;
  g_10 = tex_space.texels[4 * (floor_v + ceil_u * tex_space.width) + 1] / 255.0;
  b_10 = tex_space.texels[4 * (floor_v + ceil_u * tex_space.width) + 2] / 255.0;

  r_01 = tex_space.texels[4 * (ceil_v + floor_u * tex_space.width) + 0] / 255.0;
  g_01 = tex_space.texels[4 * (ceil_v + floor_u * tex_space.width) + 1] / 255.0;
  b_01 = tex_space.texels[4 * (ceil_v + floor_u * tex_space.width) + 2] / 255.0;

  r_11 = tex_space.texels[4 * (ceil_v + ceil_u * tex_space.width) + 0] / 255.0;
  g_11 = tex_space.texels[4 * (ceil_v + ceil_u * tex_space.width) + 1] / 255.0;
  b_11 = tex_space.texels[4 * (ceil_v + ceil_u * tex_space.width) + 2] / 255.0;

  r = bilinearInterp(r_00, r_10, r_01, r_11, du, dv);
  g = bilinearInterp(g_00, g_10, g_01, g_11, du, dv);
  b = bilinearInterp(b_00, b_10, b_01, b_11, du, dv);
  //printf("bilinearInterp(%.3f, %.3f, %.3f, %.3f, %.3f, %.3f) = %f\n", r_00, r_10, r_01, r_11, du, dv, r);

  return Color(r, g, b, 1);
}

Color Sampler2DImp::sample_trilinear(Texture& tex,
                                     float u, float v,
                                     float u_scale, float v_scale) {

  // Task 8: Implement trilinear filtering
  int level = (int) floor(u_scale);
  if (level < 0 or level >= kMaxMipLevels) {
    return Color(1,0,1,1);
  }
  Color c0 = sample_bilinear(tex, u, v, level);
  Color c1 = sample_bilinear(tex, u, v, level + 1);
  float r = c0.r + (u_scale - level) * (c1.r - c0.r);
  float g = c0.g + (u_scale - level) * (c1.g - c0.g);
  float b = c0.b + (u_scale - level) * (c1.b - c0.b);
  return Color(r, g, b, 1);

}

} // namespace CMU462
