/// @description Return to Giant
if(lock || cutSceneLock){return}

if(scr_canSeePartner(self, partner)){
	sendBack = true;
	pullInitDist = point_distance(x, y, partner.x, partner.y)

	o_camera.target = partner
}
