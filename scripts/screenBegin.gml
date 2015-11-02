// this draws the surface on the screen
if !surface_exists(global.screen)
{
    global.screen = surface_create(screen_w, screen_h);
}

else
{
    surface_set_target(global.screen);
    draw_clear(0);
    draw_set_blend_mode_ext(bm_one, bm_zero);
    draw_surface_stretched(global.screen, screen_x, screen_y, screen_w*screen_scale, screen_h*screen_scale);
    draw_set_blend_mode(bm_normal);
    surface_reset_target();
}
