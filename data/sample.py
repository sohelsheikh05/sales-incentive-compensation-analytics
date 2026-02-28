import random
import csv
from datetime import datetime, timedelta

rows = []
transaction_id = 1

for rep_id in range(1,11):
    for _ in range(12):   # 12 transactions per rep → 120 rows
        sale_amount = random.randint(5000, 30000)
        date = datetime(2024, random.randint(1,3), random.randint(1,28))
        rows.append([transaction_id, rep_id, date.strftime("%Y-%m-%d"), sale_amount])
        transaction_id += 1

with open("sales_transactions.csv","w",newline="") as f:
    writer = csv.writer(f)
    writer.writerow(["transaction_id","rep_id","sale_date","sale_amount"])
    writer.writerows(rows)