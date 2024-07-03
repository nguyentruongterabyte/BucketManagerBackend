import pandas as pd
import json
import math

# Đọc tệp CSV
df = pd.read_csv('Currency.csv', header=None, names=[
    '_state_territory', '_currency', '_symbol', '_ISO_code', '_fractional_unit', '_number_to_basic'
])

# Lưu trữ giá trị thuộc tính đầu tiên của dòng trước
previous_state_territory = None

# Tạo danh sách các chuỗi JSON
json_list = []
for index, row in df.iterrows():
 


    json_obj = {
        "_state_territory": row['_state_territory'],
        "_currency": row['_currency'],
        "_symbol": row['_symbol'],
        "_ISO_code": row['_ISO_code'],
        "_fractional_unit": row['_fractional_unit'],
        "_number_to_basic": row['_number_to_basic']
    }

    # Kiểm tra nếu _number_to_basic là NaN
    if pd.isna(json_obj['_number_to_basic']):
        if index > 1:  # Đảm bảo rằng không truy cập phần tử trước của danh sách khi index là 0
            previous_json_obj = json.loads(json_list[index - 1])
            next_json_obj = {
                "_state_territory": previous_json_obj["_state_territory"],
                "_currency": json_obj["_state_territory"],
                "_symbol": json_obj["_currency"],
                "_ISO_code": json_obj["_symbol"],
                "_fractional_unit": json_obj["_ISO_code"],
                "_number_to_basic": json_obj["_fractional_unit"]
            }
            json_obj = next_json_obj

    json_list.append(json.dumps(json_obj, ensure_ascii=False))

# Lưu danh sách các đối tượng JSON vào tệp Currency.json
with open('Currency.json', 'w', encoding='utf-8') as f:
    json.dump(json_list, f, ensure_ascii=False, indent=4)
