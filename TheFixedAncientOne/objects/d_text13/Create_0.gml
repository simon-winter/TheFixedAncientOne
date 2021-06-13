portrait_index = -1;
name = "System";
text = [
	"What if we were to go back to the forest?"
];
speakers = [id];
next_line = [0];

create_textbox(text,speakers,next_line);



audio_stop_all();
audio_play_sound(snd_gn4,1,false);
audio_play_sound(m_cave,0.8,true);
