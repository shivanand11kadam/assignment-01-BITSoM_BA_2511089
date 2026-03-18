## Anomaly Analysis

### Insert Anomaly
In this dataset everything is stored in one big table. Because of that, we cannot add information about a new product or a new sales representative unless an order exists for them. For example, if the company hires a new sales representative but they haven’t made a sale yet, there is no place to store their details without creating a fake order row.

### Update Anomaly
Customer details appear multiple times in the table. For example, the customer "Amit Sharma" shows up in more than one order such as ORD001 and ORD002. If his city changes, the update would have to be done in every row where his name appears. If even one row is missed, the data will become inconsistent.

### Delete Anomaly
Deleting an order row can remove important information from the dataset. For instance, if the order with ID ORD005 for "Priya Singh" is deleted because the order was cancelled, her customer information would also disappear since it exists only in that row.

## Normalization Justification

Keeping everything in a single table might look simpler in the beginning, but it creates several problems as the dataset grows. In this file, customer details, product details, and sales representative information repeat in many rows whenever multiple orders are placed.

For example, when the same customer places several orders, their name and city appear again and again in the table. If the city changes, every row has to be updated manually, which increases the chance of mistakes. The same thing happens with product and sales representative information.

Normalization solves this problem by separating the data into different tables such as customers, products, orders, and order_items. Each table stores one type of information, and the tables are connected using keys. This reduces repetition in the database and makes the data easier to maintain.
