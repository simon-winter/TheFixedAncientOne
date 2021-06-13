portrait_index = -1;
name = "System";
text = [
	"We're here, dear friend. Home."
];
speakers = [id];
next_line = [0];

create_textbox(text,speakers,next_line);

audio_play_sound(snd_gn5,1,false);
