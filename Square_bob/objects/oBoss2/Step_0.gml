shoot_timer += 1;

if (shoot_timer >= shoot_delay)
{
    shoot_timer = 0;

    instance_create_layer(x, y, "Instances", obullet);
}

if (x < oPlayer.x) x += 0.5;
if (x > oPlayer.x) x -= 0.5;