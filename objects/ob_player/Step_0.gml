/// @description Insert description here
// You can write your code in this editor
if not global.paused{
if keyboard_check(ord("A")) or keyboard_check(vk_left){ image_angle += spd}
if keyboard_check(ord("D")) or keyboard_check(vk_right){ image_angle -= spd}
image_angle +=1
}