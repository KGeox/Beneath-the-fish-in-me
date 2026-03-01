if (instance_exists(target))
{
    var target_x = target.x - view_width / 2;
    var target_y = target.y - view_height / 2;

    // Smooth follow
    var cam_x = lerp(camera_get_view_x(cam), target_x, 0.1);
    var cam_y = lerp(camera_get_view_y(cam), target_y, 0.1);

    // Clamp inside room
    cam_x = clamp(cam_x, 0, room_width - view_width);
    cam_y = clamp(cam_y, 0, room_height - view_height);

    camera_set_view_pos(cam, cam_x, cam_y);
}