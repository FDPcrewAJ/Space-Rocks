/// @desc Room Switching

if(keyboard_check_pressed(vk_enter)) {
	switch(room) {
		case rm_start:
			room_goto(rm_game);
			break;
			
		case rm_win:
		case rm_gameover:
			game_restart();
			break;
	}
}

if(room == rm_game) {
	
	if(score >= 1000) {
		audio_stop_sound(snd_song);
		room_goto(rm_win);
		audio_play_sound(snd_win, 1, false);
	}

	if(lives <= 0) {
		audio_stop_sound(snd_song);
		room_goto(rm_gameover);
		audio_play_sound(snd_lose, 1, false);
	}
}