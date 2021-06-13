/// @description Return to Giant
if(lock || cutSceneLock){return}

if(scr_canSeePartner(self, partner) && 	point_distance(x,y,partner.x, partner.y) <= pullMaxDistance){
	lock = true;
	pullInitDist = point_distance(x, y, partner.x, partner.y)
	sprite_index = spr_gnome_roll;
	o_giant.sprite_index = spr_giant_pull;
	o_giant.image_index = 0;	



	alarm[0] = 0.5*room_speed
}
else{
	playCantSenBackAnim = true
}
