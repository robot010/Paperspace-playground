import pandas as pd
import os


print(os.getcwd())
print(os.listdir())
a = pd.read_csv("/storage/s97lz6k5/favourita/stores.csv")
print(a.head())


