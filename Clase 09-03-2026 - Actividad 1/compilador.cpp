#include <stdio.h>

int main() {
    int a = 10;
    int b = 20;
    int suma = a + b;
    
    printf("La suma es: %d\n", suma);
    
    return 0;
}


//Ejercicio 1: Ingresar 10 valores por teclado. Presentar la suma y el promedio.
#include <stdio.h>

int main() {
    float valor, suma = 0, promedio;
    
    for(int i = 0; i < 10; i++) {
        printf("Ingrese el valor %d: ", i + 1);
        scanf("%f", &valor);
        suma += valor;
    }
    
    promedio = suma / 10.0;
    
    printf("\nLa suma es: %.2f\n", suma);
    printf("El promedio es: %.2f\n", promedio);
    
    return 0;
}



//Ejercicio 2: Generar 500 números aleatorios entre 50 y 100. Contar cuántos son pares y cuántos son impares.
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    int pares = 0, impares = 0, valor;
    
    // Inicializar la semilla para los números aleatorios
    srand(time(NULL));
    
    for(int i = 0; i < 500; i++) {
        // Fórmula para rango [min, max]: rand() % (max - min + 1) + min
        valor = rand() % (100 - 50 + 1) + 50; 
        
        if(valor % 2 == 0) {
            pares++;
        } else {
            impares++;
        }
    }
    
    printf("Cantidad de números pares: %d\n", pares);
    printf("Cantidad de números impares: %d\n", impares);
    
    return 0;
}


//Ejercicio 3: Ingresar 10 valores por teclado. Presentar el mayor y el menor.
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    char sucursales[25][20]; // Arreglo de strings para los nombres
    float ventas[25];        // Arreglo paralelo para las ventas
    float suma_ventas = 0, promedio_ventas;
    
    srand(time(NULL));
    
    // Llenar los arreglos paralelos y calcular la suma
    for(int i = 0; i < 25; i++) {
        sprintf(sucursales[i], "Sucursal %d", i + 1); // Generar nombre automáticamente
        ventas[i] = (rand() % 4001) + 1000;           // Ventas entre 1000 y 5000
        suma_ventas += ventas[i];
    }
    
    // Calcular el promedio
    promedio_ventas = suma_ventas / 25.0;
    
    printf("El promedio general de ventas es: $%.2f\n\n", promedio_ventas);
    printf("--- Sucursales por encima del promedio ---\n");
    
    // Buscar y presentar las que superan el promedio
    for(int i = 0; i < 25; i++) {
        if(ventas[i] > promedio_ventas) {
            printf("%s: $%.2f\n", sucursales[i], ventas[i]);
        }
    }
    
    return 0;
}