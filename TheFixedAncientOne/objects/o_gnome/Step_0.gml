
// Inherit the parent event
event_inherited();

var sepDist = point_distance(x,y,o_giant.x, o_giant.y);
var perc = clamp(sepDist / maxSeperationDistance,0 ,1);
var mag = ease_in_cubic(perc,0,2,1)
addMovement(point_direction(x,y,o_giant.x, o_giant.y), mag)

if(throwedMagnitudeOverrite_msSeconds > 0){
	sprite_index = spr_gnome_roll;
	addMovement(lastMovedDirection, 1)
	throwedMagnitudeOverrite_msSeconds -= (delta_time / 1000)
}
else{		
	if(abs(hsp) + abs(vsp) < maxSpeedForIdleAnim){
		sprite_index = spr_gnome_idle;
	}
	else{	
		// sprite handling
		switch(floor(lastMovedDirection / 90) % 4){
			case(0):
				sprite_index = spr_gnome_walk_right;
				break;
			case(1):
				sprite_index = spr_gnome_walk_up;
				break;
			case(2):
				sprite_index = spr_gnome_walk_left;
				break;
			case(3):
				sprite_index = spr_gnome_walk_down;
				break;
		}
	}	
}
