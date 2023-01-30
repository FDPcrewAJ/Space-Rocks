/// @desc

var game_instructions = 
@"Score 1,000 points to win!

UP: Move
LEFT/RIGHT: Change direction
SPACE: Shoot

>> Press ENTER To Start <<
"

switch(room) {
	case rm_game:
		draw_text(20, 20, string("SCORE: " + string(score)));
		draw_text(20, 40, string("LIVES: " + string(lives)));
		break;
	
	case rm_start:
		draw_set_halign(fa_center);
		draw_text_transformed_color(
			room_width/2, 100, "SPACE ROCKS",
			3, 3, 0, #B23929, #99623D, #327A7F, #99623D, 1
		);
		draw_text_transformed_color(
		room_width/2, 200, string(game_instructions),
		1, 1, 0, #EF9C16, #EF1520, #EF9C16, #EFE417, 1
		);
		draw_set_halign(fa_left);
		break;
		
	case rm_win:
		draw_set_halign(fa_center);
		draw_text_transformed_color(
			room_width/2, 200, "YOU WIN!",
			3, 3, 0, c_green, c_green, #327A7F, #327A7F, 1
		);
		draw_text_transformed_color(room_width/2, 300, "Press ENTER To Restart", 
		1, 1, 0, #EF9C16, #EF1520, #EF9C16, #EFE417, 1
		);
		draw_set_halign(fa_left);
		break;
	
	case rm_gameover:
		draw_set_halign(fa_center);
		draw_text_transformed_color(
			room_width/2, 150, "GAME OVER",
			3, 3, 0, #EF1520, #EF1520, #EFE417, #EFE417, 1
		);
		draw_text_transformed_color(room_width/2, 250, "Final Score: "+string(score),
		1, 1, 0, #B23929, #99623D, #327A7F, #99623D, 1
		);
		draw_text_transformed_color(room_width/2, 300, "Press ENTER To Restart", 
		1, 1, 0, #EF9C16, #EF1520, #EF9C16, #EFE417, 1
		);
		draw_set_halign(fa_left);
		break;
		
}