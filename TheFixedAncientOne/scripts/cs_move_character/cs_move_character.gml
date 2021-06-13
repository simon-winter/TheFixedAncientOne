///@description cutscene_move_character
///@arg obj
///@arg x
///@arg y
///@arg relative?
///@arg spd
///@arg spriteRun
function cs_move_character(argument0, argument1, argument2, argument3, argument4, argument5) {

	var obj = argument0, relative = argument3, spd = argument4, spr = argument5;
	if (x_dest == -1){
		if (!relative){
			x_dest = argument1;
			y_dest = argument2;
		}else {
			x_dest = obj.x + argument1;
			y_dest = obj.y + argument2;
		}
	}
	var xx = x_dest;
	var yy = y_dest;

	with (obj){
		image_speed = 1;
		sprite_index = spr;
	
		if (point_distance(x,y,xx,yy) >= spd){
			var dir = point_direction(x,y,xx,yy);
			var ldirx = lengthdir_x(spd,dir);
			var ldiry = lengthdir_y(spd,dir);
	
			x += ldirx;
			y += ldiry;
		} else {
			image_speed = 0;
			/*if (spr == spriteRunR) image_index = 2;
			if (spr == spriteRunL) image_index = 3;
			if (spr == spriteRunU) image_index = 1;
			if (spr == spriteRunD) image_index = 0;
			sprite_index = spriteIdle;*/
			x = xx;
			y = yy;
			with (other){
				x_dest = -1;
				y_dest = -1;
				cutscene_end_action();
			}
		}
	}
}
