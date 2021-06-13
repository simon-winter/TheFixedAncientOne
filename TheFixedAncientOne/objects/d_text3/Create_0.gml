portrait_index = -1;
name = "System";
text = [
	"I’m afraid the rest might be this bad or worse."
];
speakers = [id];
next_line = [0];

create_textbox(text,speakers,next_line);

audio_play_sound(snd_gn1,1,false);
audio_play_sound(snd_gn1,1,false);
audio_sound_gain(snd_gn1,1,0);
alarm[0] = 250;