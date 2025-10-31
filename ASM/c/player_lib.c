#include "player_lib.h"

#include "gfx.h"

void hookshot_reticle_color(z64_game_t* play, struct CollisionPoly* poly, int32_t bgId) {
    OPEN_DISPS(play->common.gfx);

    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 128, 128, 128, 255);
    if (SurfaceType_CanHookshot(&play->col_ctxt, poly, bgId)) {
        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 0, 0, 255);
    }

    CLOSE_DISPS(play->common.gfx);
}
