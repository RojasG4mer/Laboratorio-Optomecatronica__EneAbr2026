import matplotlib.pyplot as plt
import pandas as pd

# 1. Cargar el archivo
# Pandas detecta automáticamente los encabezados
ruta = f'C:\\Laboratorio de Optomacatronica\\Laboratorio-Optomecatronica__EneAbr2026\\Primer practica motores\\motor_01_caracterizacion.csv'
df = pd.read_csv(ruta)

# # 2. Visualizar los primeros datos (opcional, para confirmar)
columnas = df.columns
print(columnas)

# 3. Crear la gráfica
plt.figure(figsize=(10, 6)) # Define el tamaño de la ventana
plt.plot(df[columnas[0]], df[columnas[1]], marker='o', linestyle='-', color='b')

# 4. Personalización (¡No la olvides!)
plt.title('Caracterización motor 01')
plt.xlabel(columnas[0])
plt.ylabel(columnas[1])
plt.grid(True)
plt.show()