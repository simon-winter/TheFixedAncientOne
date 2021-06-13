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

			arrow.direction = point_direction(x, y, target_x, target_y)
		}
	}
}else{
	crtCoolDown -= (delta_time / 1000) // convert to msSeconds and substract	

}