// screen base(view_wview and view_hview)
screen_scale = 4;

// create a surface for the whole screen to be drawn on
global.screen = surface_create(view_wview[0], view_hview[0]);

// this will destroy the screen object if surfaces are not supported on the graphics card, reverting to the viewport method
if global.screen = -1
{
    instance_destroy();
}
