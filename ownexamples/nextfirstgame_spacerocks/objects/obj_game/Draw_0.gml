/// @description Insert description here
// You can write your code in this editor
switch(room)
{
	case rm_start:
		var c = c_yellow;
		
		draw_set_halign(fa_center);
		
		draw_text_transformed_color(
			room_width/2,100,"SPACE ROCKS",
			3,3,0,c,c,c,c,1
		);
		
		draw_text(
			room_width/2,200,
			@"Score 1,000 points to win!

UP: move
LEFT/RIGHT: change direction
SPACE: shoot

>> PRESS ENTER TO START <<"
		);
		draw_set_halign(fa_left);
	break;
	case rm_win:
		var c = c_green;
		
		draw_set_halign(fa_center);
		
		draw_text_transformed_color(
			room_width/2,100,"YOU WIN",
			3,3,0,c,c,c,c,1
		);
		
		draw_text(
			room_width/2,200,
			@"PRESS ENTER TO RESTART"
		);
		draw_set_halign(fa_left);
	break;
	case rm_gameover:
		var c = c_red;
		
		draw_set_halign(fa_center);
		
		draw_text_transformed_color(
			room_width/2,100,"GAME OVER",
			3,3,0,c,c,c,c,1
		);
		
		draw_text(
			room_width/2,200,
			"FINAL SCORE: "+string(global._score)
		);
		draw_text(
			room_width/2,300,
			"PRESS ENTER TO RESTART"
		);
		draw_set_halign(fa_left);
	break;	
	case rm_game:
		draw_text(20,20,"SCORE: "+string(global._score)+"\n"+"LIVES: "+string(global._lives));
	break;		
}



