
var crtlyTriggered = collision_circle(x,y, triggerRadius, triggeredBy, false, false) != noone

if(crtlyTriggered){
	if(freshlyEntered){
		freshlyEntered = false;
		activated = !activated;	
		audio_play_sound(snd_button,1,false);
	}
}
else{
	freshlyEntered = true	
}
	
// bool == 0 | 1 
image_index = activated


with(targetToTrigger){
	setTrigger(other.id, other.activated)	
}