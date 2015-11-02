// this draws the surface on the screen
if !surface_exists(global.screen)
{
    global.screen = surface_create(view_wview[0], view_hview[0]);
}

else
{
    surface_set_target(global.screen);
    draw_clear(0);
    //draw_set_blend_mode_ext(bm_src_alpha, bm_zero);
    //draw_surface_stretched(global.screen, view_xview[0], view_yview[0], view_wview[0]*screen_scale, view_hview[0]*screen_scale);
    draw_set_blend_mode(bm_normal);
    surface_reset_target();
}

