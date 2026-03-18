import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

## Graficas de David
ruta_dav = 'Codigos_para_graficar_python/Primer practica/Rpm.csv'
df_david = pd.read_csv(ruta_dav)
# print(df_david)


### Graficas mias
ruta_mias = 'Codigos_para_graficar_python/Primer practica/motor_01_caracterizacion.csv'
df_mias = pd.read_csv(ruta_mias)

# Columnas
columnas_dav = df_david.columns
columnas_mias = df_mias.columns

# ==========================================
# 1. Graficas para RPM y Voltaje
# ==========================================
fig1, axs1 = plt.subplots(1, 2, figsize=(12, 5))

# Grafica de Mias (Corregido el uso de set())
axs1[0].scatter(df_mias[columnas_mias[0]], df_mias[columnas_mias[1]], color='green')
axs1[0].set(title='Caracterización motor 01 a 0.24 mA', xlabel='Voltaje (V)', ylabel='RPM')
axs1[0].grid()

# Grafica de David (Corregido el uso de set() para títulos y etiquetas)
axs1[1].scatter(df_david[columnas_dav[0]], df_david[columnas_dav[1]], label='David', color='blue')
axs1[1].set(title='Caracterización motor 02 a 0.24 mA', xlabel='Voltaje (V)', ylabel='RPM')
axs1[1].grid()



# Guardar la primera figura
plt.savefig('caracterizacion_motores.png', bbox_inches='tight') # bbox_inches='tight' evita que se corten los bordes
plt.show()


# ==========================================
# 2. Graficas para ciclos de trabajo (Transistor Bipolar)
# ==========================================
fig2, axs2 = plt.subplots(2, 2, figsize=(12, 10))

# Graficas mias
axs2[0, 0].scatter(df_mias[columnas_mias[2]], df_mias[columnas_mias[3]], color='green')
axs2[0, 0].set_xlabel('Porcentaje')
axs2[0, 0].set_ylabel('RPM')
axs2[0, 0].set_title('Ciclo de trabajo vs RPM a hertz (Transistor bipolar)')
axs2[0, 0].grid()

axs2[0, 1].scatter(df_mias[columnas_mias[4]], df_mias[columnas_mias[5]], color='green')
axs2[0, 1].set_xlabel('Porcentaje')
axs2[0, 1].set_ylabel('RPM')
axs2[0, 1].set_title('Ciclo de trabajo vs RPM a kilohertz (Transistor bipolar)')
axs2[0, 1].grid()

# # Graficas David
axs2[1, 0].scatter(df_david[columnas_dav[2]], df_david[columnas_dav[3]], color='blue')
axs2[1, 0].set_xlabel('Porcentaje')
axs2[1, 0].set_ylabel('RPM')
axs2[1, 0].set_title('Ciclo de trabajo vs RPM a hertz (Transistor bipolar)')
axs2[1, 0].grid()

axs2[1, 1].scatter(df_david[columnas_dav[4]], df_david[columnas_dav[5]], color='blue')
axs2[1, 1].set_xlabel('Porcentaje')
axs2[1, 1].set_ylabel('RPM')
axs2[1, 1].set_title('Ciclo de trabajo vs RPM a kilohertz (Transistor bipolar)')
axs2[1, 1].grid()

# Guardar la segunda figura
plt.savefig('ciclos_trabajo_bipolar.png', bbox_inches='tight')
plt.show()


# ==========================================
# 3. Graficas para ciclos de trabajo con Mosfet
# ==========================================

plt.scatter(df_david[columnas_dav[6]], df_david[columnas_dav[7]])
plt.xlabel('Porcentaje')
plt.ylabel('RPM')
plt.title('Ciclo de trabajo vs RPM a hertz (MOSFET)')
plt.grid()

# Guardar la tercera figura
plt.savefig('ciclos_trabajo_mosfet.png', bbox_inches='tight')
plt.show()