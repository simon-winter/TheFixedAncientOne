/// @description can't senBack anim
// trigge rin endstep i guess

if(crtCantSenBackAnimTmr > 0){	
	sprite_index = spr_gnome_roll;	
	crtCantSenBackAnimTmr -= (delta_time / 1000)
}
else{	
	crtCantSenBackAnimTmr = cantSendBackAniamtionTimer
	playCantSenBackAnim = false
}