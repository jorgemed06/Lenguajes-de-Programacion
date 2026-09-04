#Ejercicio 1: Sumar dos números y presentar el resultado.
import time

print("--- Ejercicio 1: Sumar dos números ---")

# Inicia cronómetro
start_time = time.time()

a = 10
b = 20
suma = a + b
print("La suma es:", suma)

# Detiene cronómetro
end_time = time.time()
print(f"Tiempo de ejecución: {end_time - start_time:.6f} segundos\n")