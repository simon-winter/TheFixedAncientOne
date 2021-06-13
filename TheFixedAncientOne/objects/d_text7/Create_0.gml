portrait_index = -1;
name = "System";
text = [
	"Are you mad Cador?! Now we can never return and make a home."
];
speakers = [id];
next_line = [0];

create_textbox(text,speakers,next_line);

audio_play_sound(snd_gn2,1,false);

alarm[0] = 260;