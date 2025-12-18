import csv

input_path = "data/sales_raw.csv"
output_path = "data/sales_clean.csv"

with open(input_path, "r", newline="") as infile, \
     open(output_path, "w", newline="") as outfile:

    reader = csv.reader(infile)
    writer = csv.writer(outfile)

    header = next(reader)
    writer.writerow(header + ["total_amount"])

    for row in reader:
        try:
            order_id = row[0]
            product = row[1]
            quantity = int(row[2])
            price = int(row[3])

            total_amount = quantity * price
            writer.writerow([order_id, product, quantity, price, total_amount])

        except (ValueError, IndexError):
            continue
