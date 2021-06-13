event_inherited();

if(abs(hsp) + abs(vsp) < maxSpeedForIdleAnim){
	if(!lock){
		sprite_index = spr_together_idle;
	}else {
		sprite_index = spr_giant_idle;
	}
}
else{	
	// sprite handling
	switch(floor(lastMovedDirection / 90) % 4){
		case(0):
			sprite_index = spr_together_walk_right;
			break;
		case(1):
			sprite_index = spr_together_walk_up;
			break;
		case(2):
			sprite_index = spr_together_walk_left;
			break;
		case(3):
			sprite_index = spr_together_walk_down;
			break;
	}
}	