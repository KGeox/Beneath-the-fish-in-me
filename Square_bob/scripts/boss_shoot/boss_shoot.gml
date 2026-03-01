function boss_shoot()
{
    if (!instance_exists(target)) return;

    var b = instance_create_layer(x, y, "Instances", oBoss_Bullet);
    
    b.direction = point_direction(x, y, target.x, target.y);
    b.speed = 5;
}