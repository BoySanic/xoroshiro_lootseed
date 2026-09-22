#define XRSR_SILVER_RATIO  0x6a09e667f3bcc909
#define XRSR_GOLDEN_RATIO  0x9e3779b97f4a7c15
#define XRSR_MIX1          0xbf58476d1ce4e5b9
#define XRSR_MIX2          0x94d049bb133111eb

#include <inttypes.h>
#include <stdio.h>

struct Xoroshiro {
  uint64_t lo;
  uint64_t hi;
};


uint64_t rotl64(uint64_t x, uint8_t b)
{
    return (x << b) | (x >> (64-b));
}

uint64_t xNextLong(struct Xoroshiro *xr) {
    uint64_t l = xr->lo;
    uint64_t h = xr->hi;
    uint64_t n = rotl64(l + h, 17) + l;
    h ^= l;
    xr->lo = rotl64(l, 49) ^ h ^ (h << 21);
    xr->hi = rotl64(h, 28);
    return n;
}
uint64_t xNextLongJ(struct Xoroshiro *xr)
{
    int32_t a = xNextLong(xr) >> 32;
    int32_t b = xNextLong(xr) >> 32;
    return ((uint64_t)a << 32) + b;
}
uint64_t mix64(uint64_t input) {
    input = (input ^ input >> 30) * XRSR_MIX1;
    input = (input ^ input >> 27) * XRSR_MIX2;
    return input ^ input >> 31;
}

void setSeed(struct Xoroshiro *rng, uint64_t seed) {
  seed ^= XRSR_SILVER_RATIO;
  rng->lo = mix64(seed);
  rng->hi = mix64(seed + XRSR_GOLDEN_RATIO);

}

void main() {
  struct Xoroshiro rnd = {-7046029254386353131ULL, 7640891576956012809ULL};
  uint64_t l = xNextLong(&rnd);
  printf("%" PRId64 "\n", l);
  struct Xoroshiro xr;
  setSeed(&xr, l);
  printf("h: %llx\nl:%llx\n", xr.hi, xr.lo);
  uint64_t ls = xNextLongJ(&xr);
  printf("%" PRId64 "\n", ls);
}
