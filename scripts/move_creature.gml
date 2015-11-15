if ( y < (room_height/3) )
{ 
    HVel = 0.03;
    maxHspeed = 0.2;
    if (colour_get_value(colour) < 128)
    {
        maxHspeed = 0.05;
    }
    if (colour_get_value(colour) < 64)
    {
        maxHspeed = 0.07;
    }
}
else if ( y < (room_height * (3/4)) )
{
    HVel = 0.02;
    maxHspeed = 0.3;
    if (colour_get_value(colour) < 128)
    {
        maxHspeed = 0.15;
    }
    if (colour_get_value(colour) < 64)
    {
        maxHspeed = 0.17;
    }
}
else //if (y < room_height)
{
    HVel = 0.04;
    maxHspeed = 0.4;
    if (colour_get_value(colour) < 128)
    {
        maxHspeed = 0.25;
    }
    if (colour_get_value(colour) < 64)
    {
        maxHspeed = 0.27;
    }
}

if (global.depthCount < global.finale)
{
    if ( keyboard_check(vk_left) and (hspeed < maxHspeed) )
    {
        hspeed += HVel;
    }
    
    else if ( keyboard_check(vk_right) and (hspeed > -maxHspeed) )
    {
        hspeed -= HVel;
    }
    
    else if (hspeed > 0)
    {
        hspeed -= decel;
        if (hspeed < 0)
        {
            hspeed = 0;
        }
    }
    
    else if (hspeed < 0)
    {
        hspeed += decel;
        if (hspeed > 0)
        {
            hspeed = 0;
        }
    }
    
    if (hspeed == 0)
    {
        hspeed += velAdd;
    }
    if ( keyboard_check (vk_up) and (vspeed < -0.1) )
    {
        vspeed += VVel;
    }
    else if (vspeed > -maxVspeed)
    {
        vspeed -= VVel;
    }
    
    if (global.depthCount > global.mid)
    {
        maxVspeed = 2;//0.1;
    }
}
else //if ( (global.depthCount > global.finale) and (vspeed != 0) )
{
    vspeed = 0;
}
