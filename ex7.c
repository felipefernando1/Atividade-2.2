#include <stdio.h>

int main() {
    int total;
    printf("Total de segundos: ");
    scanf("%d", &total);
    printf("%dh %dmin %ds", total / 3600, (total % 3600) / 60, total % 60);
    return 0;
}