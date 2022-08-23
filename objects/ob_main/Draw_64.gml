/// @description draw stuff
draw_set_halign(fa_left)
draw_set_font(font)
draw_set_color(c_white)
draw_text(20,20, "Points: " + string(global.points))
draw_sprite_ext(sp_planet, 0, room_width/2, room_width/2, 1,1,planet_angle,c_white,1)

if global.died{
	if not died_audio{
	audio_stop_sound(background_music)
	audio_play_sound(game_over_music, 1, 999999)
	died_audio = true
	}
	draw_set_halign(fa_center)
	draw_set_font(font_died)
	draw_set_color(c_red)
	//draw_text(room_width/2,room_height/2-70, "~DIED~")
	draw_sprite_ext(whte,0,0, 0, 1,1,0,c_red,0.3)
	draw_sprite_ext(died,0,room_width/2, room_height/2, 1,1,0,c_white,1)
}

if global.in_menu{
	draw_set_halign(fa_center)
	draw_set_font(font_died)
	draw_set_color(color_menu)
	//draw_text_transformed(room_width/2,room_height/2-70, "~ESPAÇOLUTION~", 0.7, 0.7,0)
	draw_sprite_ext(whte,0,0, 0, 1,1,0,color_menu,0.5)
	draw_sprite_ext(logo,0,room_width/2, room_height/2, 1,1,0,c_white,1)
}
if global.paused and not global.in_menu and not global.died{
	draw_set_halign(fa_center)
	draw_set_font(font_died)
	//draw_text_transformed(room_width/2,room_height/2-70, "~PAUSED~", 0.7, 0.7,0) // <-- never used 
	draw_sprite_ext(whte,0,0, 0, 1,1,0,c_green,0.3)
	draw_sprite_ext(paused,0,room_width/2, room_height/2, 1,1,0,c_white,1)
}