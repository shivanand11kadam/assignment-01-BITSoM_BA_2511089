// OP1: insertMany() — insert all 3 documents from sample_documents.json

use("assignment_db")

db.products.insertMany([
  {
    product_id: "E1001",
    category: "Electronics",
    name: "Wireless Noise-Canceling Headphones",
    price: 15000,
    brand: "Sony",
    specifications: {
      battery_life_hours: 30,
      warranty_years: 2,
      bluetooth_version: "5.0"
    },
    features: ["Noise Cancellation", "Bluetooth", "Fast Charging"],
    in_stock: true
  },
  {
    product_id: "C2001",
    category: "Clothing",
    name: "Men's Cotton T-Shirt",
    price: 800,
    brand: "Nike",
    attributes: {
      size: "L",
      color: "Navy Blue",
      material: "Cotton"
    },
    care_instructions: ["Machine wash cold", "Do not iron print"]
  },
  {
    product_id: "G3001",
    category: "Groceries",
    name: "Organic Almond Milk",
    price: 300,
    brand: "Oatly",
    nutritional_info: {
      calories_per_100ml: 45,
      sugar_g: 0
    },
    expiry_date: "2024-12-31",
    is_vegan: true
  }
]);


// OP2: find() — retrieve all Electronics products with price > 20000

db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});


// OP3: find() — retrieve all Groceries expiring before 2025-01-01

db.products.find({
  category: "Groceries",
  expiry_date: { $lt: "2025-01-01" }
});


// OP4: updateOne() — add a discount_percent field

db.products.updateOne(
  { product_id: "E1001" },
  { $set: { discount_percent: 15 } }
);


// OP5: createIndex() — create an index on category field

db.products.createIndex({ category: 1 });

/*
Explanation:
Creating an index on the category field helps speed up queries where products are filtered by category.
Since this is a common operation in an e-commerce system, indexing reduces the time needed to search through all documents.
*/