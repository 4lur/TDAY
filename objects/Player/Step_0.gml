// Andar pro lado

//variables
hsp = 0;
vsp = 0;

//properties
move_speed = 1;

//movement
hsp = (keyboard_check(ord("D")) || keyboard_check(vk_right)) - (keyboard_check(ord("A")) || keyboard_check(vk_left));
vsp = (keyboard_check(ord("S")) || keyboard_check(vk_down)) - (keyboard_check(ord("W")) || keyboard_check(vk_up));

hsp *= move_speed;
vsp *= move_speed;