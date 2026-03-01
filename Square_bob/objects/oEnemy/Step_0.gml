// Move forward
x += lengthdir_x(move_speed, direction);

// Check for wall collision
if (place_meeting(x, y, oPlatform))
{
    // Undo movement
    x -= lengthdir_x(move_speed, direction);
    
    // Reverse direction
    direction += 180;
}

// Flip sprite based on direction
if (direction == 0)
    image_xscale = 1;
else
    image_xscale = -1;
	
// Flip sprite based on direction
if (direction == 0)
    image_xscale = 1;
else
    image_xscale = -1;
	
if (hp <= 0)
{
    instance_destroy();
}