#Ejercicio 4: Arreglos paralelos de 25 sucursales y sus ventas.
import time
import random

print("--- Ejercicio 4: Sucursales y Ventas ---")

# Inicia cronómetro (incluye la generación de los arreglos y los cálculos)
start_time = time.time()

# Generar datos simulados
sucursales = [f"Sucursal {i+1}" for i in range(25)]
ventas = [random.uniform(1000, 5000) for _ in range(25)]

# Cálculos
suma_ventas = sum(ventas)
promedio_ventas = suma_ventas / len(ventas)

print(f"El promedio general de ventas es: ${promedio_ventas:.2f}")
print("Sucursales por encima del promedio:")

for i in range(25):
    if ventas[i] > promedio_ventas:
        print(f"- {sucursales[i]}: ${ventas[i]:.2f}")

# Detiene cronómetro
end_time = time.time()
print(f"Tiempo de ejecución: {end_time - start_time:.6f} segundos\n")