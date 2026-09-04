#Ejercicio 3: Generar 500 valores aleatorios entre 50 y 100. Presentar pares e impares.
import time
import random

print("--- Ejercicio 3: 500 valores aleatorios ---")

# Inicia cronómetro
start_time = time.time()

pares = 0
impares = 0

for _ in range(500):
    valor = random.randint(50, 100)
    if valor % 2 == 0:
        pares += 1
    else:
        impares += 1

print(f"Cantidad de números pares: {pares}")
print(f"Cantidad de números impares: {impares}")

# Detiene cronómetro
end_time = time.time()
print(f"Tiempo de ejecución: {end_time - start_time:.6f} segundos\n")