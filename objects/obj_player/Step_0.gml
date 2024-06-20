// Evento Step
var move_x = 0;
var move_y = 0;
var move_speed = 4;

// Verifica teclas de movimento
if (keyboard_check(vk_left)) {
    move_x -= move_speed;
}
if (keyboard_check(vk_right)) {
    move_x += move_speed;
}
if (keyboard_check(vk_up)) {
    move_y -= move_speed;
}
if (keyboard_check(vk_down)) {
    move_y += move_speed;
}

// Normaliza o vetor de movimento para evitar movimento mais rápido na diagonal
var move_length = sqrt(sqr(move_x) + sqr(move_y));
if (move_length != 0) {
    move_x /= move_length;
    move_y /= move_length;
}

// Atualiza a posição do personagem
x += move_x * move_speed;
y += move_y * move_speed;