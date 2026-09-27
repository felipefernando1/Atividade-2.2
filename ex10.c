#include <stdio.h>

int main() {
    printf("Um caractere: ");
    char c = getchar();
    printf("Codigo ASCII de %c: %d\n", c, c);
    return 0;
}