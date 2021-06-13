//fading
crtFadeTime -= (delta_time / 1000)

image_alpha = clamp(crtFadeTime / timeToFadeOut, 0, 1);

if(crtFadeTime <= 0){
	instance_destroy(self);
}
