/// @description Insert description here
// You can write your code in this editor
margin = 10

menueOpen = !menueOpen

if(menueOpen){	
	lock = true;
	
	menu_x = o_camera.x
	menu_y = o_camera.y
	
	var reStart = instance_create_layer(menu_x, menu_y, "gui", o_menu_button);
	reStart.instSelectNr = 0;
	reStart.instText = "Restart";
	
	var exitGame = instance_create_layer(
		menu_x, reStart.y + reStart.sprite_height + margin, "gui", o_menu_button);	
	exitGame.instSelectNr = 1;
	exitGame.instText = "Exit";

}
else{
	lock = false;
	with(o_menu_button){
		instance_destroy(self)
	}	
}