/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Correção da posição
if (place_meeting(x, y, obj_wall)) {
    if (keyboard_check(vk_left)) {
        x += move_speed;
    }
    if (keyboard_check(vk_right)) {
        x -= move_speed;
    }
    if (keyboard_check(vk_up)) {
        y += move_speed;
    }
    if (keyboard_check(vk_down)) {
        y -= move_speed;
    }
}
