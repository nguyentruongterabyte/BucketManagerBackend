import pandas as pd
import json

# Đọc tệp CSV
df = pd.read_csv('Currencies.csv', header=None, names=[
    '_state_territory', '_currency', '_symbol', '_ISO_code', '_fractional_unit', '_number_to_basic'
])

# Lưu trữ giá trị thuộc tính đầu tiên của dòng trước
previous_state_territory = None

# Tạo danh sách các chuỗi JSON
json_list = []
for index, row in df.iterrows():
    # Kiểm tra xem dòng có thiếu thuộc tính đầu tiên không
    if pd.isna(row['_state_territory']):
        row['_state_territory'] = previous_state_territory
    else:
        previous_state_territory = row['_state_territory']
    
    json_obj = {
        "_state_territory": row['_state_territory'],
        "_currency": row['_currency'],
        "_symbol": row['_symbol'],
        "_ISO_code": row['_ISO_code'],
        "_fractional_unit": row['_fractional_unit'],
        "_number_to_basic": row['_number_to_basic']
    }
    json_list.append(json.dumps(json_obj, ensure_ascii=False))

# Hiển thị từng chuỗi JSON khi nhấn Enter
index = 0
while index < len(json_list):
    input(f"Nhấn Enter để hiển thị chuỗi JSON tiếp theo... {index + 1}")
    print(json_list[index])
    index += 1

print("Đã hiển thị tất cả các chuỗi JSON.")
