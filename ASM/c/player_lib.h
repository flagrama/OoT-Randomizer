#ifndef PLAYER_LIB_H
#define PLAYER_LIB_H
#include "z64.h"

struct CollisionContext;
struct CollisionPoly;

uint32_t SurfaceType_CanHookshot(z64_col_ctxt_t* colCtx, struct CollisionPoly* poly, int32_t bgId);

#endif