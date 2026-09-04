//Ejercicio 1: Sumar dos números y presentar el resultado.
#include <iostream>
#include <chrono>

using namespace std;
using namespace std::chrono;

int main() {
    cout << "--- Ejercicio 1: Sumar dos numeros ---\n";

    // Inicia cronómetro
    auto start = high_resolution_clock::now();

    int a = 10;
    int b = 20;
    int suma = a + b;
    cout << "La suma es: " << suma << "\n";

    // Detiene cronómetro
    auto end = high_resolution_clock::now();
    duration<double> time_span = duration_cast<duration<double>>(end - start);
    
    cout << "Tiempo de ejecucion: " << time_span.count() << " segundos\n\n";
    return 0;
}