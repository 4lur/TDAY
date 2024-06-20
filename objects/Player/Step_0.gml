// Evento Step
var moveX = 0;
var moveY = 0;

// Verifica teclas de movimento
if (keyboard_check(vk_left)) {
    moveX = -1;
}
if (keyboard_check(vk_right)) {
    moveX = 1;
}
if (keyboard_check(vk_up)) {
    moveY = -1;
}
if (keyboard_check(vk_down)) {
    moveY = 1;
}

// Normaliza o vetor de movimento para evitar movimento mais rápido na diagonal
var move_length = sqrt(sqr(moveX) + sqr(moveY));
if (move_length != 0) {
    moveX /= move_length;
    moveY /= move_length;
}

// Atualiza a posição do personagem
x += moveX * move_speed;
y += moveY * move_speed;