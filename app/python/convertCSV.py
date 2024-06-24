import pandas as pd

# Đọc tệp .xlsx
df = pd.read_excel('currency.xlsx')

# Xuất tệp .csv
df.to_csv('currency.csv', index=False)