import pandas as pd
from sqlalchemy import create_engine

engine = create_engine(
    "mysql+pymysql://root:Kushal%40134207@localhost/salesData"
)

df = pd.read_sql("SELECT * FROM sales_analysis", engine)
# print(df.head())


# Convert date
df['order_date'] = pd.to_datetime(df['order_date'])
df['month'] = df['order_date'].dt.month
df['month_name'] = df['order_date'].dt.strftime('%B')

# KPIs
total_revenue = df['revenue'].sum()
total_orders = df['order_id'].nunique()
avg_order_value = total_revenue / total_orders

print("TOTAL REVENUE:", total_revenue)
print("TOTAL ORDERS:", total_orders)
print("AVG ORDER VALUE:", round(avg_order_value, 2))

# Monthly revenue
monthly_revenue = (
    df.groupby(['month', 'month_name'])['revenue']
    .sum()
    .reset_index()
    .sort_values('month')
)

print("\nMONTHLY REVENUE")
print(monthly_revenue)

# Top products
top_products = (
    df.groupby('product_name')['revenue']
    .sum()
    .sort_values(ascending=False)
)

print("\nTOP PRODUCTS")
print(top_products)

df.to_excel("sales_analysis_raw.xlsx", index=False)
monthly_revenue.to_excel("monthly_revenue.xlsx", index=False)
top_products.to_excel("top_products.xlsx")