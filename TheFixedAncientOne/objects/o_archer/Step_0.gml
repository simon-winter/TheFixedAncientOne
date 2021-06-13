if(crtCoolDown < 0){ 	
	var target = instance_exists(o_gnome) ? o_gnome : o_giant;
	if(point_distance(x,y,target.x, target.y) < shoothingDistance){	
		if(collision_line(x,y,target.x, target.y, o_wall, false, false) == noone){
		
			// only reset when actually shot
			var rndShootCoolDown = random(shootCooldownMaxDeviation)
			crtCoolDown = shootCooldown + (rndShootCoolDown - (rndShootCoolDown/2))
		
			// shoot
			var arrow = instance_create_layer(x,y,"top", o_projectile)		
				
			var rndDeviationX = random(maxRandomDeviation)  
			var rndDeviationY = random(maxRandomDeviation)
		
			// offset by half the magnitude to get +- deviation
			var target_x = target.x + rndDeviationX - (rndDeviationX/2)
			var target_y = target.y + rndDeviationY - (rndDeviationY/2)
			
			lookDir = point_direction(x, y, target_x, target_y)
			arrow.direction = point_direction(x, y, target_x, target_y)
		}
	}
}else{
	crtCoolDown -= (delta_time / 1000) // convert to msSeconds and substract	

}


	
// sprite handling
switch(floor(lookDir / 45) % 4){
	case(0):
		sprite_index = archerside_r;
		break;
	case(1):
		sprite_index = archertopside_r;		
		break;
	case(2):
		sprite_index = archertop;
		break;
	case(3):
		sprite_index = archertopside;
		break;
	case(4):
		sprite_index = archerside;
		break;
	case(5):
		sprite_index = archerdownside;
		break;
	case(6):
		sprite_index = archerdown;
		break;
	case(7):
		sprite_index = archerdownside_r;
		break;
}
