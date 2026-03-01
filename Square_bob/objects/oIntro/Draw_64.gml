draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var cx = display_get_gui_width() / 2;
var cy = display_get_gui_height() / 2;

draw_text(cx, cy - 100, "Beneath the fish in me");

draw_text(cx, cy - 20, "CONTROLS:");
draw_text(cx, cy + 10, "Move: A D");
draw_text(cx, cy + 40, "Jump: W");
draw_text(cx, cy + 70, "Shoot: Space");
draw_text(cx, cy + 90, "sand cannot be touch and can hide things");
draw_text(cx, cy + 120, "After taking a damage, you are immortal for 4.11 sec");
draw_text(cx, cy + 150, "Your life is on top left (10HP)");

draw_text(cx, cy + 170, "Press ENTER to Start");