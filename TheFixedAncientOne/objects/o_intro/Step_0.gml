/// @description Insert description here
// You can write your code in this editor
timer++;

if (timer > 600) room_goto_next();

if (timer > 70 and timer < 120 and !audio_is_playing(snd_introV)) audio_play_sound(snd_introV,1,false);