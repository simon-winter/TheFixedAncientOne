/// @description Insert description here
// You can write your code in this editor
hitTimer -= delta_time / 1000 / 1000;
hitTimer = clamp(hitTimer,0,1);

if(!instance_exists(o_gnome) && !instance_exists(o_giant)) return;

if (phase == 0){ //idle
	speed = 0;
	dir = 0;
	timer_atk = 0;
}
if (phase == 1 and vision){ //Running to the gnome
	if (instance_exists(o_gnome)) dir = point_direction(x,y,o_gnome.x,o_gnome.y);
	direction = dir;
	speed = 1;
	timer_atk++;
	if (timer_atk > timer_atk_max) phase = 0;
}
if (phase == 2 and vision && instance_exists(o_giant)){ //Running to the giant
	dir = point_direction(x,y,o_giant.x,o_giant.y);
	direction = dir;
	speed = 1;
	timer_atk++;
	if (timer_atk > timer_atk_max) phase = 0;
}

if (instance_exists(o_gnome) and distance_to_object(o_gnome) < 100) phase = 1;
else if (distance_to_object(o_giant) < 100) phase = 2;


if (instance_exists(o_gnome) && place_meeting(x,y,o_gnome)){	
	if (o_gnome.sendBack = true){
		instance_destroy(self);
		audio_play_sound(snd_spearAttack,1,false)
		return;
	}		
}

var target = instance_exists(o_gnome) ? o_gnome : o_giant
if(place_meeting(x,y,target)){
	if(hitTimer <= 0){		
		target.charHealth -= 1;
		hitTimer = hitTimerMax * room_speed;
		audio_play_sound(snd_spearAttack,1,false)
	}
}
else if(collision_line(x,y,target.x,target.y,o_wall,0,1) != noone){
	vision = false;
	phase = 0;
}
else vision = true;


