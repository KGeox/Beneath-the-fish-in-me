draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var cx = display_get_gui_width() / 2;
var cy = display_get_gui_height() / 2;

draw_text(cx, cy - 100, "MY GAME TITLE");

draw_text(cx, cy - 20, "It is all for now");
draw_text(cx, cy + 10, "Thanks for Playing");
draw_text(cx, cy + 40, "Credits:");
draw_text(cx, cy + 70, "Design: Jason and Yann");
draw_text(cx, cy + 70, "Code and bugs: Georges");
draw_text(cx, cy + 90, "English or spanish if You move you have to restart");
draw_text(cx, cy + 120, "");

draw_text(cx, cy + 170, "REStart: press Enter");