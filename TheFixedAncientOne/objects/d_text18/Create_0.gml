portrait_index = -1;
name = "System";
text = [
	"You are my home dear friend, and I am a fool."
];
speakers = [id];
next_line = [0];

create_textbox(text,speakers,next_line);

audio_play_sound(snd_g8,1,false);

alarm[0] = 360;
