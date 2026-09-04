a = 10
b = 20
suma = a + b
print("La suma es:", suma)


#Ejercicio 1: Ingresar 10 valores por teclado. Presentar la suma y el promedio.
suma = 0

for i in range(10):
    valor = float(input(f"Ingrese el valor {i+1}: "))
    suma += valor

promedio = suma / 10

print(f"\nLa suma es: {suma}")
print(f"El promedio es: {promedio}")


#Ejercicio 2: Generar 500 valores aleatorios entre 50 y 100. Presentar pares e impares.
import random

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


#Ejercicio 3: Arreglos paralelos de 25 sucursales y sus ventas.
import random

# Generar 2 arreglos paralelos
sucursales = [f"Sucursal {i+1}" for i in range(25)]
ventas = [random.uniform(1000, 5000) for _ in range(25)] # Ventas aleatorias entre $1000 y $5000

# Calcular el promedio de las ventas
suma_ventas = sum(ventas)
promedio_ventas = suma_ventas / len(ventas)

print(f"El promedio general de ventas es: ${promedio_ventas:.2f}\n")
print("--- Sucursales por encima del promedio ---")

# Buscar y presentar las que superan el promedio
for i in range(25):
    if ventas[i] > promedio_ventas:
        print(f"{sucursales[i]}: ${ventas[i]:.2f}")