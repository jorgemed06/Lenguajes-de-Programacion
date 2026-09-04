//Ejercicio 2: Ingresar 10 valores por teclado. Presentar la suma y el promedio.

#include <iostream>
#include <chrono>

using namespace std;
using namespace std::chrono;

int main() {
    cout << "--- Ejercicio 2: Ingresar 10 valores ---\n";
    float valores[10];
    
    // 1. Pedimos los datos FUERA del cronómetro
    for(int i = 0; i < 10; i++) {
        cout << "Ingrese el valor " << i + 1 << ": ";
        cin >> valores[i];
    }

    // 2. Inicia cronómetro SOLO para los cálculos
    auto start = high_resolution_clock::now();

    float suma = 0;
    for(int i = 0; i < 10; i++) {
        suma += valores[i];
    }
    float promedio = suma / 10.0;

    cout << "\nLa suma es: " << suma << "\n";
    cout << "El promedio es: " << promedio << "\n";

    // Detiene cronómetro
    auto end = high_resolution_clock::now();
    duration<double> time_span = duration_cast<duration<double>>(end - start);
    
    cout << "Tiempo de ejecucion del calculo: " << time_span.count() << " segundos\n\n";
    return 0;
}