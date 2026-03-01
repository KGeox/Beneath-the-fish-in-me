draw_set_color(c_white);
draw_text(20, 20, "HP: " + string(hp));
for (var i = 0; i < max_hp; i++)


if (invincible)
{
    if (current_time mod 200 < 100)
    {
        draw_self();
    }
}
else
{
    draw_self();
}