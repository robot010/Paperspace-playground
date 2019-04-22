import pandas as pd
import os


print(os.getcwd())
print(os.listdir())
print(os.listdir("/storage"))
a = pd.read_csv("/storage/favourita/stores.csv")
print(a.head())


