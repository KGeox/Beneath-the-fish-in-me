//audio_play_sound(snd_music, 1, true);

// Reduce fire cooldown
if (fire_timer > 0)
{
    fire_timer--;
}

x_speed = 0; // reset horizontal speed 

y_speed += grav; // add gravity to y_speed

//Control Movement
if keyboard_check(ord("D")) { // if the right arrow key is pressed

    x_speed = movement_speed; // set the horizontal speed to heidi's movement_speed

} else if keyboard_check(ord("A")) { // otherwise, if the left arrow key is pressed

    x_speed = -movement_speed; // set the horizontal speed to negative heidi's movement_speed, making her move left

}

// To move
move_and_collide(x_speed, y_speed, oSolid);

//If collision with solid material
if (place_meeting(x, y + 1, oSolid)) { // if heidi is on the ground

    if (keyboard_check_pressed(ord("W"))) { // and the up arrow key is pressed

        y_speed = -6.5; // make heidi jump by setting her y_speed to a negative value

    } else { // otherwise, if heidi is on the ground but not jumping

        y_speed = 0; // set her y_speed to 0 so she doesn't fall through the ground

    }

}

// If touch spike Restart
//if (place_meeting(x, y, oSpike)) { // if heidi collides with the spikes
//
//    room_restart() // restart the level
//
//}

//If touch enemy die
//if (place_meeting(x, y, oEnemy)) { // if heidi collides with the spikes
//
//    room_restart() // restart the level
//
//}

// if the player is outside of the room
if (y > room_height or y < 0 or x > room_width or x < 0) { 

    room_restart(); 

}


//Change orientation of player
if keyboard_check(ord("D")) {

    x_speed = movement_speed; 

    image_xscale = -1; // flip heidi's sprite so she faces right

} else if keyboard_check(ord("A")) {

    x_speed = -movement_speed; 

    image_xscale = 1; // reset her sprite so she faces left

}

if (can_take_damage)
{
    if (place_meeting(x, y, oEnemy))
    {
		audio_play_sound(aHit, 1, false);
        take_damage(1);
    }
}


//health
if (invincible)
{
    invincible_timer--;

    if (invincible_timer <= 0)
    {
        invincible = false;
        can_take_damage = true;
    }
}



if (keyboard_check(vk_space) && fire_timer <= 0)
{
    shoot();
	audio_play_sound(aShoot, 1, false);
    fire_timer = fire_rate;
}

switch (global.level)
{
    case 1:
        sprite_index = sPlayer2;
        break;

    case 2:
        sprite_index = sPlayer3;
        break;

    case 3:
        sprite_index = sPlayer4;
        break;
}

