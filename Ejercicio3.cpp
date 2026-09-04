//Ejercicio 3: Generar 500 valores aleatorios entre 50 y 100. Presentar pares e impares.

#include <iostream>
#include <chrono>
#include <cstdlib>
#include <ctime>

using namespace std;
using namespace std::chrono;

int main() {
    cout << "--- Ejercicio 3: 500 valores aleatorios ---\n";
    srand(time(NULL));

    // Inicia cronómetro
    auto start = high_resolution_clock::now();

    int pares = 0, impares = 0, valor;
    for(int i = 0; i < 500; i++) {
        valor = rand() % (100 - 50 + 1) + 50;
        if(valor % 2 == 0) {
            pares++;
        } else {
            impares++;
        }
    }

    cout << "Cantidad de numeros pares: " << pares << "\n";
    cout << "Cantidad de numeros impares: " << impares << "\n";

    // Detiene cronómetro
    auto end = high_resolution_clock::now();
    duration<double> time_span = duration_cast<duration<double>>(end - start);
    
    cout << "Tiempo de ejecucion: " << time_span.count() << " segundos\n\n";
    return 0;
}