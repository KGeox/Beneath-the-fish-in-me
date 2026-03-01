function shoot()
{
    var b = instance_create_layer(x, y, "Instances", oBall);
    
    b.direction = image_xscale == 1 ? 180 : 0;
    b.speed = 8;
}