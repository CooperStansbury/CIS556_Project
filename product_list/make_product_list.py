#!/usr/bin/env python3

import pandas as pd
import itertools
import decimal
import random
from faker import Faker

fake = Faker()

print()
new_rows = []

products = [('The Silas Bissell', 'wedding'),
            ('The Boudin', 'wedding'),
            ('The Lacombe', 'casual'),
            ('The Marx', 'wedding'),
            ('The Guevara', 'casual')]

styles = ['men',
        'women',
        'baby',
        'senior']

subcategories = ['earring',
        'necklace',
        'bracelet',
        'ring']

colors = ['pearl',
        'white',
        'amber',
        'gold']

sizes = ['small','medium', 'large']

product_number = 100000

for sub in subcategories:
    price = decimal.Decimal(random.randrange(10000))/100
    for julia in styles:
        for color in colors:
            if color == 'gold':
                price = float(price) * 1.4

            for sml in sizes:
                for product in products:

                    row = {
                        'product_number':"A" + str(product_number),
                        'product_name': str(product[0]) + " " + str(color).capitalize() + " " + str(sub).capitalize() ,
                        'category':product[1],
                        'subcategory':sub,
                        'style': julia,
                        'color':color,
                        'size':sml,
                        'wholesale_price': round((random.randrange(3, 7)/10) * float(price), 2),
                        'number_in_stock':random.randrange(1000),
                        'number_from_vendor':random.randrange(100),
                        'backorder_date': fake.date_between(start_date='today', end_date='+90d'),
                    }

                    new_rows.append(row)
                    product_number += 1

df = pd.DataFrame(new_rows)

print("Number of Products: ", len(df), '\n')
print(df.head(50))

df.to_csv("product_list.csv")

# print(category, style, type)