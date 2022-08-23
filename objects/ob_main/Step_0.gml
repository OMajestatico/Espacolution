/// @description step stuff
if global.in_menu{
global.paused = true
}
if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space){
if global.died{
room_restart()
global.points = 0
global.died = false
muted = false
}
if global.in_menu{
global.in_menu = false
global.points = 0
global.died = false
global.paused = false
}
}

if muted{
audio_pause_all()
}
else{
audio_resume_all()
}

if not alarm[0] and not global.paused{
alarm[0] = room_speed+45
}