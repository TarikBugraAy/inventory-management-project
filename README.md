# Inventory Management System

## Project Overview
This project is an Inventory Management System designed for a hypothetical store. It is developed using MySQL for database management and Python for the user interface. The system allows for effective tracking and management of products, suppliers, orders, sales, and more.

## Features
- **Database Design**: A well-structured MySQL database to manage categories, suppliers, products, orders, sales, and users.
- **User Interface**: A Python-based graphical user interface for easy interaction with the database.
- **Data Management**: Capabilities to add, view, and manage inventory, sales, and orders.

## Setup

### Prerequisites
- MySQL Server
- Python 3.x
- MySQL Connector for Python (`mysql-connector-python`)

### Database Setup
1. **Create the Database**:
   - Run the SQL script to create the `inventorymanagement` database and its tables.
   - The script includes the creation of tables like `Categories`, `Suppliers`, `Product`, `Users`, etc.

2. **Insert Sample Data**:
   - Use the provided dataset to populate the tables with sample data.

### Application Setup
1. **Clone the Repository**:
   ```sh
   git clone https://github.com/[your-username]/inventory-management-project.git
  
2. **Install Required Python Packages**:
    ```sh
    pip install tkinter
    pip install mysql-connector-python


### UI Configuration:

- **Open the Python UI code.**
- **Enter your database host, user, password, and port information in the connection setup section.**


### Usage
Once the application is running, you can:

- Login: Use the credentials provided in the Users table.
- Manage Inventory: Add, view, and update product details.
- Handle Orders and Sales: Record and view orders and sales transactions.
- Manage Suppliers: Add and view supplier details.

