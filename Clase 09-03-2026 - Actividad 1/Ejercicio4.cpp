//Ejercicio 4: Arreglos paralelos de 25 sucursales y sus ventas.

#include <iostream>
#include <chrono>
#include <cstdlib>
#include <ctime>
#include <string>

using namespace std;
using namespace std::chrono;

int main() {
    cout << "--- Ejercicio 4: Sucursales y Ventas ---\n";
    srand(time(NULL));

    // Inicia cronómetro
    auto start = high_resolution_clock::now();

    string sucursales[25];
    float ventas[25];
    float suma_ventas = 0;

    // Generar datos simulados y sumar
    for(int i = 0; i < 25; i++) {
        sucursales[i] = "Sucursal " + to_string(i + 1);
        ventas[i] = (rand() % 4001) + 1000;
        suma_ventas += ventas[i];
    }

    float promedio_ventas = suma_ventas / 25.0;

    cout << "El promedio general de ventas es: $" << promedio_ventas << "\n";
    cout << "Sucursales por encima del promedio:\n";

    for(int i = 0; i < 25; i++) {
        if(ventas[i] > promedio_ventas) {
            cout << "- " << sucursales[i] << ": $" << ventas[i] << "\n";
        }
    }

    // Detiene cronómetro
    auto end = high_resolution_clock::now();
    duration<double> time_span = duration_cast<duration<double>>(end - start);
    
    cout << "Tiempo de ejecucion: " << time_span.count() << " segundos\n\n";
    return 0;
}