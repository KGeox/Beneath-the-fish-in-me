var dist = point_distance(x, y, target.x, target.y);

if (dist > 60)
{
    var dir = point_direction(x, y, target.x, target.y);
    x += lengthdir_x(move_speed, dir);
    y += lengthdir_y(move_speed, dir);
}

// Countdown shooting timer
shoot_timer--;

if (shoot_timer <= 0)
{
    boss_shoot();
    shoot_timer = shoot_cooldown;
}

