// main.c —— SDCC 兼容写法
#include <8052.h>

void delay_ms(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++)
        for (j = 0; j < 110; j++);
}

void main() {
    while (1) {
        P1_0 = 0;   // ← 直接使用 P1_0（SDCC 自带定义）
        delay_ms(500);
        P1_0 = 1;
        delay_ms(500);
    }
}