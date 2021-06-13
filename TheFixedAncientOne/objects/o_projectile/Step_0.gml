image_angle = direction

// distnace
if(point_distance(x,y,startPointX, startPointY) > maxDistance){
		crtFadeTime -= delta_time / 1000
}


// playerhit
if(place_meeting(x, y, o_playerController)){
		// just hit
		if(speed != 0){
			o_playerController.charHealth -= 1;
			speed = 0;
		}	
		//sticking behavior
		x = o_playerController.x;
		y = o_playerController.y;
		crtFadeTime -= delta_time / 1000
}

// wallhit
if(place_meeting(x, y, o_wall)){
		speed = 0;
		crtFadeTime -= delta_time / 1000
}


//fading
image_alpha = clamp(crtFadeTime / timeToFadeOut, 0, 1);
if(crtFadeTime <= 0){
	instance_destroy(self);
}
