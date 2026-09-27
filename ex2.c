#include <stdio.h>

int main() {
    int a, b;
    printf("Dividendo e divisor: ");
    scanf("%d %d", &a, &b);
    printf("Quociente: %d\n", a / b);
    printf("Resto: %d\n", a % b);
    return 0;
}