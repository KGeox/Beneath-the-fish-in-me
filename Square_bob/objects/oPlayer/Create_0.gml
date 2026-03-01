x_speed = 0; 

y_speed = 0; 

movement_speed = 1.5; 

grav = 0.3; // don't call this gravity! that's a built-in gamemaker variable used for something else

// Maximum and current life
max_hp = 10;
hp = max_hp;

// Damage system
can_take_damage = true;
invincible = false;
invincible_timer = 0;
invincible_duration = 4.11 * room_speed; // 3 seconds

fire_rate = 10; // frames between shots
fire_timer = 0;

if (!variable_global_exists("level"))
{
    global.level = 1;
}
