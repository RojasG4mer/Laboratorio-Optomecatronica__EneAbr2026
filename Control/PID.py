import pandas as pd
import numpy as np
import matplotlib.pyplot as plt


df = pd.read_csv('Control\PID - P.csv')

columnas = df.columns

plt.plot(df[columnas[3]], df[columnas[4]], color = 'red')
plt.grid()
plt.show()