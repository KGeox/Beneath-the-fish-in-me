// Move forward automatically
// (GameMaker moves using speed + direction)

// Destroy if outside room
if (x < 0 || x > room_width || y < 0 || y > room_height)
{
    instance_destroy();
}