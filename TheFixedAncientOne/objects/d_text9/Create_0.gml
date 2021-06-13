portrait_index = -1;
name = "System";
text = [
	"Look Peran, a camp was made here not long ago."
];
speakers = [id];
next_line = [0];

create_textbox(text,speakers,next_line);

audio_play_sound(snd_g5,1,false);
alarm[0] = 320;

