#Ejercicio 2: Ingresar 10 valores por teclado. Presentar la suma y el promedio.
import time

print("--- Ejercicio 2: Ingresar 10 valores ---")

# 1. Pedimos los datos FUERA del cronómetro
valores = []
for i in range(10):
    valor = float(input(f"Ingrese el valor {i+1}: "))
    valores.append(valor)

# 2. Inicia cronómetro SOLO para los cálculos
start_time = time.time()

suma = sum(valores)
promedio = suma / 10
print(f"\nLa suma es: {suma}")
print(f"El promedio es: {promedio}")

# Detiene cronómetro
end_time = time.time()
print(f"Tiempo de ejecución del cálculo: {end_time - start_time:.6f} segundos\n")