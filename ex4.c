#include <stdio.h>

int main() {
    float c, f;
    printf("Celsius: ");
    scanf("%f", &c);
    f = c * (9/5) + 32;
    printf("Fahrenheit: %.1f\n", f);
    return 0;
}