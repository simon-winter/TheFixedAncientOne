/// @description SpawnGnome
if(lock || cutSceneLock){return}
lock = true;

var gnome = instance_create_layer(x,y,"player", o_gnome)
with(gnome){	
	audio_play_sound(snd_throwingTheGnome,1,false);
	addMovement(other.lastMovedDirection, 1)	
	o_camera.target = gnome
	lock = false;
}


