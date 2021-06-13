/// @description Insert description here
// You can write your code in this editor
draw_self();
//draw_set_font();
draw_set_halign(fa_middle); 
draw_set_valign(fa_middle);
draw_text(x, y, instText);

var color = draw_get_color();
draw_set_color(c_lime);
if (select == instSelectNr) draw_rectangle(x-sprite_width/2,y-sprite_height/2,
	x+sprite_width/2, y+sprite_height/2, true);

draw_set_color(color)