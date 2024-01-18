import tkinter as tk
import tkinter.messagebox as msgbox
from tkinter import ttk
import mysql.connector


try: # !Connect to your MySQL database!
    project_db = mysql.connector.connect(
        host="",                      #Add your databse`s info to open.
        user="",
        password="",
        port="",
        database="inventorymanagement"
    )
    print("Connected to the database successfully.")
except mysql.connector.Error as err:
    print(f"Error connecting to the database: {err}")

class LoginWindow:
    
    
    
    def __init__(self, root):
        self.root = root
        self.root.title("Login -  Inventory Management System")
        self.root.geometry("300x300")
        root.configure(bg="#FF7F00")
        self.setup_ui()
        

    def setup_ui(self):
        self.username_icon = tk.PhotoImage("username.png")
        self.username_label = ttk.Label(self.root, text="Username:",image=self.username_icon,compound=tk.LEFT)
        self.username_label.pack(pady=10)
        self.username_entry = ttk.Entry(self.root)
        self.username_entry.pack(pady=5)

        self.password_label = ttk.Label(self.root, text="Password:")
        self.password_label.pack(pady=10)
        self.password_entry = ttk.Entry(self.root, show="*")
        self.password_entry.pack(pady=5)

        self.login_button = ttk.Button(self.root, text="Login", command=self.login)
        self.login_button.pack(pady=20)

    def login(self):
        
        username = self.username_entry.get()
        password = self.password_entry.get()
        
        try:
            cursor = project_db.cursor()

            query = "SELECT UserID FROM Users WHERE Username = %s AND Password = %s"
            cursor.execute(query, (username, password))

            user_data = cursor.fetchone()

            if user_data:
                print("Login successful.")
                user_id = user_data[0]
                self.record_login_attempt(user_id, True)
                self.root.destroy()
                root = tk.Tk()
                app = MyApp(root, user_id)
                root.mainloop()
            else:
                print("Invalid credentials. Please try again.")
                msgbox.showwarning("Login Failed", "Invalid credentials. Please try again.")
                self.record_login_attempt(None, False)

        except mysql.connector.Error as err:
            print("Error in login:", err)
        finally:
            cursor.close()

    def record_login_attempt(self, user_id, success):
        try:
            cursor = project_db.cursor()
            if success:
                select_query = "SELECT Username, Role FROM Users WHERE UserID = %s"
                cursor.execute(select_query, (user_id,))
                user_data = cursor.fetchone()
                username, user_role = user_data
            else:
                
                username = self.username_entry.get()
                user_role = 'N/A'

            insert_query = "INSERT INTO LoginLog (UserID, Username, UserRole, LoginTime, LoginSuccess) VALUES (%s, %s, %s, NOW(), %s)"
            cursor.execute(insert_query, (user_id, username, user_role, success))
            project_db.commit()
            print("Login attempt recorded successfully.")
        except mysql.connector.Error as err:
            print("Error recording login attempt:", err)
        finally:
            if cursor:
                cursor.close()

class MyApp:
    def __init__(self, root, user_id):
        self.user_id = user_id
        self.root = root
        self.root.title("Inventory Management System")
        self.setup_ui()
        self.root.geometry("1240x1080")
        root.configure(bg="#FF7F00")
        
    def setup_ui(self):
        
        self.notebook = ttk.Notebook(self.root,width=1920, height=1080)
        self.notebook.pack(pady=30, padx=30)

        # Creating and adding frames to the notebook
        
        self.orders_page = ttk.Frame(self.notebook)
        self.sales_page = ttk.Frame(self.notebook)
        self.product_page = ttk.Frame(self.notebook)
        self.suppliers_page = ttk.Frame(self.notebook)
        
        
        self.icon_buy = tk.PhotoImage(file="buy.png")
        self.icon_sell = tk.PhotoImage(file="sell.png")
        self.icon_inventory = tk.PhotoImage(file="inventory.png")
        self.icon_buying = tk.PhotoImage(file="cart.png")
        self.icon_search = tk.PhotoImage(file="search.png")
        self.icon_add =tk.PhotoImage(file="plus.png")
        self.icon_refresh = tk.PhotoImage(file='refresh.png')
        self.icon_refresh2 = tk.PhotoImage(file="refresh2.png")


        self.notebook.add(self.orders_page, text="Orders", image=self.icon_buy,compound=tk.TOP)
        self.notebook.add(self.sales_page, text="Sales",image=self.icon_sell,compound=tk.TOP)
        self.notebook.add(self.product_page, text="Products",image=self.icon_inventory,compound=tk.TOP)
        self.notebook.add(self.suppliers_page, text="Suppliers",image=self.icon_buying, compound=tk.TOP)


        # Orders Page:
        
        
        ttk.Label(self.orders_page, text="Product ID:").pack(padx=10, pady=0)
        self.order_product_id = ttk.Entry(self.orders_page)
        self.order_product_id.pack()

        ttk.Label(self.orders_page, text="Supplier ID:").pack(padx=10, pady=0)
        self.order_supplier_id = ttk.Entry(self.orders_page)
        self.order_supplier_id.pack()

        ttk.Label(self.orders_page, text="Quantity:").pack(padx=10, pady=0)
        self.order_quantity = ttk.Entry(self.orders_page)
        self.order_quantity.pack()

        ttk.Label(self.orders_page, text="Unit Cost:").pack(padx=10, pady=0)
        self.order_unit_cost = ttk.Entry(self.orders_page)
        self.order_unit_cost.pack()

        ttk.Button(self.orders_page, text="Add Order",image=self.icon_add,compound=tk.LEFT, command=self.add_order).pack(pady=10)

        self.refresh_buttons_frame = ttk.Frame(self.orders_page)
        self.refresh_buttons_frame.pack(pady=10)

        ttk.Button(self.refresh_buttons_frame, text='Refresh Products', image=self.icon_refresh2,
                   compound=tk.LEFT, command=self.refresh_products).pack(side=tk.LEFT, padx=10)
        ttk.Button(self.refresh_buttons_frame, text='Refresh Suppliers', image=self.icon_refresh2,
                   compound=tk.LEFT, command=self.refresh_suppliers).pack(side=tk.LEFT, padx=10)
        
        self.products_tree = ttk.Treeview(self.orders_page,height=25)
        self.products_tree["columns"] = ("ProductID", "ProductName","SupplierName")
        
        self.products_tree.column("#0", width=0,stretch=tk.NO)
        self.products_tree.column("ProductID", width=30,anchor=tk.CENTER)
        self.products_tree.column("ProductName", width=120,anchor=tk.CENTER)
        self.products_tree.column("SupplierName",width=200,anchor=tk.CENTER)
        
        self.products_tree.heading("#0", text="", anchor=tk.W)
        self.products_tree.heading("ProductID", text="ID", anchor=tk.CENTER)
        self.products_tree.heading("ProductName", text="Name", anchor=tk.W)
        self.products_tree.heading("SupplierName",text="Supplier",anchor=tk.W)
        
        
        self.suppliers_tree = ttk.Treeview(self.orders_page,height=25)
        self.suppliers_tree["columns"] = ("SupplierID", "SupplierName")
        
        self.suppliers_tree.column("#0", width=0,stretch=tk.NO)
        self.suppliers_tree.column("SupplierID", width=30,anchor=tk.CENTER)
        self.suppliers_tree.column("SupplierName", width=120,anchor=tk.CENTER)
        
        self.suppliers_tree.heading("#0", text="", anchor=tk.CENTER)
        self.suppliers_tree.heading("SupplierID", text="ID", anchor=tk.CENTER)
        self.suppliers_tree.heading("SupplierName", text="Name", anchor=tk.W)
        
        
        self.orders_tree = ttk.Treeview(self.orders_page,height=25)
        self.orders_tree["columns"] = ("OrderID", "OrderDate", "SupplierID", "ProductID", "UserID", "OrderQuantity", "UnitCost")
        
        self.orders_tree.column("#0", width=0, stretch=tk.NO)
        self.orders_tree.column("OrderID", anchor=tk.W, width=30)
        self.orders_tree.column("OrderDate", anchor=tk.W, width=150)
        self.orders_tree.column("SupplierID", anchor=tk.W, width=30)
        self.orders_tree.column("ProductID", anchor=tk.W, width=30)
        self.orders_tree.column("UserID", anchor=tk.W, width=30)
        self.orders_tree.column("OrderQuantity", anchor=tk.W, width=50)
        self.orders_tree.column("UnitCost", anchor=tk.W, width=50)
        
        self.orders_tree.heading("#0", text="", anchor=tk.W)
        self.orders_tree.heading("OrderID", text="OrderID", anchor=tk.CENTER)
        self.orders_tree.heading("OrderDate", text="OrderDate", anchor=tk.CENTER)
        self.orders_tree.heading("SupplierID", text="SupplierID", anchor=tk.CENTER)
        self.orders_tree.heading("ProductID", text="ProductID", anchor=tk.CENTER)
        self.orders_tree.heading("UserID", text="UserID", anchor=tk.CENTER)
        self.orders_tree.heading("OrderQuantity", text="OrderQuantity", anchor=tk.CENTER)
        self.orders_tree.heading("UnitCost", text="UnitCost", anchor=tk.CENTER)

        
        self.products_tree.pack(fill=tk.BOTH,side=tk.LEFT, expand=True)
        self.suppliers_tree.pack(fill=tk.BOTH,side=tk.LEFT, expand=True)
        self.orders_tree.pack(fill=tk.BOTH,side=tk.LEFT,expand=True)
        self.show_products()
        self.show_suppliers_data()
        self.show_orders_data()


        # Sales Page:
        
        ttk.Label(self.sales_page, text="Product ID:").pack()
        self.sale_product_id = ttk.Entry(self.sales_page)
        self.sale_product_id.pack()

        ttk.Label(self.sales_page, text="Quantity:").pack()
        self.sale_quantity = ttk.Entry(self.sales_page)
        self.sale_quantity.pack()

        ttk.Button(self.sales_page, text="Record Sale",image=self.icon_add,compound=tk.LEFT, command=self.record_sale).pack(pady=10)
        
        self.sales_tree = ttk.Treeview(self.sales_page)
        self.sales_tree["columns"] = ("SaleID", "ProductID", "SaleQuantity", "ProductName", "UnitPrice", "SupplierName", "UserID", "SalesDate")
            
            
        self.sales_tree.column("#0",width=0,stretch=tk.NO)
        self.sales_tree.column("SaleID", width=50, anchor=tk.CENTER,stretch=tk.NO)            
        self.sales_tree.column("ProductID",width=50,anchor=tk.CENTER,stretch=tk.NO)
        self.sales_tree.column("SaleQuantity",width=100,anchor=tk.CENTER,stretch=tk.NO)
        self.sales_tree.column("ProductName",width=200,anchor=tk.CENTER)
        self.sales_tree.column("UnitPrice",width=100,anchor=tk.CENTER,stretch=tk.NO)
        self.sales_tree.column("SupplierName",width=200,anchor=tk.CENTER)
        self.sales_tree.column("UserID", width=50, anchor=tk.CENTER, stretch=tk.NO)
        self.sales_tree.column("SalesDate",width=200,anchor=tk.CENTER)
            
        self.sales_tree.heading("#0",text="",anchor=tk.CENTER)
        self.sales_tree.heading("SaleID", text="Sale ID", anchor=tk.CENTER)
        self.sales_tree.heading("ProductID",text="Product ID",anchor=tk.W)
        self.sales_tree.heading("SaleQuantity",text="Sale Quantity",anchor=tk.CENTER)
        self.sales_tree.heading("ProductName",text="Product Name",anchor=tk.CENTER)            
        self.sales_tree.heading("UnitPrice",text="Unit Price",anchor=tk.CENTER)
        self.sales_tree.heading("SupplierName",text="Supplier Name",anchor=tk.CENTER)
        self.sales_tree.heading("UserID", text="User ID", anchor=tk.CENTER)
        self.sales_tree.heading("SalesDate",text="Sales Date",anchor=tk.CENTER)
        
        self.sales_tree.pack(fill=tk.BOTH, expand=True)
        self.show_sales_data()
        
        ttk.Button(self.sales_page,text='Refresh Sales',image=self.icon_refresh,compound=tk.TOP, command=self.show_sales_data).pack(pady=10)


        # Product Page:
        
        self.categories = self.get_categories_from_database()
        self.selected_category = tk.StringVar()
        ttk.Label(self.product_page, text="Select Category:").pack()
        category_combobox = ttk.Combobox(self.product_page, textvariable=self.selected_category, values=self.categories)
        category_combobox.pack()
        
        self.refresh_buttons_frame = ttk.Frame(self.product_page)
        self.refresh_buttons_frame.pack(pady=10)
        
        ttk.Button(self.refresh_buttons_frame,text='Show Products',image=self.icon_search,compound=tk.LEFT, command=self.show_filtered_data).pack(side=tk.LEFT, padx=10)
        
        ttk.Button(self.refresh_buttons_frame,text='All Products', image=self.icon_refresh2,compound=tk.LEFT,command=self.show_products_data).pack(side=tk.LEFT, padx=10)
        
        self.product_tree = ttk.Treeview(self.product_page,height=10)
        self.product_tree["columns"] = ("ProductID", "ProductName", "UnitPrice", "Quantity", "SupplierName")
        self.product_tree.column("#0", width=0, stretch=tk.NO)
        self.product_tree.column("ProductID", anchor=tk.CENTER, width=10)
        self.product_tree.column("ProductName", anchor=tk.W, width=80)
        self.product_tree.column("UnitPrice", anchor=tk.CENTER, width=80)
        self.product_tree.column("Quantity", anchor=tk.CENTER, width=80)
        self.product_tree.column("SupplierName",anchor=tk.CENTER,width=140)

        self.product_tree.heading("#0", text="", anchor=tk.CENTER)
        self.product_tree.heading("ProductID", text="ID", anchor=tk.CENTER)
        self.product_tree.heading("ProductName", text="Name", anchor=tk.CENTER)
        self.product_tree.heading("UnitPrice", text="Price", anchor=tk.CENTER)
        self.product_tree.heading("Quantity", text="Quantity", anchor=tk.CENTER)
        self.product_tree.heading("SupplierName",text="Supplier Name",anchor=tk.CENTER)
        
        self.product_tree.pack(fill=tk.BOTH, expand=True)
        self.show_products_data()
    
        ttk.Label(self.product_page, text="Product Name:").pack()
        self.new_product_name = ttk.Entry(self.product_page,width=30)
        self.new_product_name.pack()

        ttk.Label(self.product_page, text="Price:").pack()
        self.new_price = ttk.Entry(self.product_page,width=30)
        self.new_price.pack()

        ttk.Label(self.product_page, text="Quantity:").pack()
        self.new_quantity = ttk.Entry(self.product_page,width=30)
        self.new_quantity.pack()

        ttk.Label(self.product_page, text="Supplier ID:").pack()
        self.new_supplier_id = ttk.Entry(self.product_page,width=30)
        self.new_supplier_id.pack()

        ttk.Label(self.product_page, text="Category:").pack()
        self.new_category = ttk.Combobox(self.product_page, values=self.categories, width=30)
        self.new_category.pack()

        ttk.Button(self.product_page, text="Add New Product",image=self.icon_add,compound=tk.LEFT, command=self.add_new_product).pack(pady=10)
        
        

        # Suppliers Page:
        
        
        self.suppliers_tree = ttk.Treeview(self.suppliers_page)
        self.suppliers_tree["columns"] = ("SupplierID", "SupplierName", "ContactName", "Address", "Email")
        self.suppliers_tree.column("#0", width=0, stretch=tk.NO)
        self.suppliers_tree.column("SupplierID", anchor=tk.CENTER, width=20)
        self.suppliers_tree.column("SupplierName", anchor=tk.W, width=100)
        self.suppliers_tree.column("ContactName", anchor=tk.CENTER, width=70)
        self.suppliers_tree.column("Address", anchor=tk.W, width=140)
        self.suppliers_tree.column("Email", anchor=tk.W, width=140)

        self.suppliers_tree.heading("#0", text="", anchor=tk.CENTER)
        self.suppliers_tree.heading("SupplierID", text="ID", anchor=tk.CENTER)
        self.suppliers_tree.heading("SupplierName", text="Name", anchor=tk.W)
        self.suppliers_tree.heading("ContactName", text="Contact", anchor=tk.CENTER)
        self.suppliers_tree.heading("Address", text="Address", anchor=tk.W)
        self.suppliers_tree.heading("Email", text="Email", anchor=tk.W)

        self.suppliers_tree.pack(fill=tk.BOTH, expand=True)
        self.show_suppliers_data()
        
        ttk.Button(self.suppliers_page, text="Refresh Suppliers",image=self.icon_refresh,compound=tk.TOP, command=self.show_suppliers_data).pack(pady=10)
        
        ttk.Label(self.suppliers_page, text="Supplier Name:").pack()
        self.new_supplier_name = ttk.Entry(self.suppliers_page,width=40)
        self.new_supplier_name.pack()

        ttk.Label(self.suppliers_page, text="Contact Name:").pack()
        self.new_contact_name = ttk.Entry(self.suppliers_page,width=40)
        self.new_contact_name.pack()

        ttk.Label(self.suppliers_page, text="Address:").pack()
        self.new_address = ttk.Entry(self.suppliers_page,width=40)
        self.new_address.pack()

        ttk.Label(self.suppliers_page, text="Email:").pack()
        self.new_email = ttk.Entry(self.suppliers_page,width=40)
        self.new_email.pack()

        ttk.Button(self.suppliers_page, text="Add New Supplier",image=self.icon_add,compound=tk.LEFT, command=self.add_new_supplier).pack(pady=10)


        
    def show_orders_data(self):
        print("Refreshing orders data...")
        
        try:
            cursor = project_db.cursor()
            cursor.execute("SELECT * FROM Orders")
            rows = cursor.fetchall()
            cursor.close()
            
            for record in self.orders_tree.get_children():
                self.orders_tree.delete(record)
            
            for row in rows:
                self.orders_tree.insert("", tk.END, values=row)
                
        except mysql.connector.Error as err:
            print("Database error:", err)
    

    def show_products_data(self):
        print("Refreshing products data...")
        try:
            cursor = project_db.cursor()
            query = """
                SELECT Product.ProductID,Product.ProductName,Product.UnitPrice, Product.Quantity, GROUP_CONCAT(DISTINCT Suppliers.SupplierName SEPARATOR ', ') AS SupplierNames
                FROM  Product
                LEFT JOIN ProductSuppliers ON Product.ProductID = ProductSuppliers.ProductID
                LEFT JOIN Suppliers ON ProductSuppliers.SupplierID = Suppliers.SupplierID
                GROUP BY Product.ProductID;
            """
            cursor.execute(query)
            rows = cursor.fetchall()
            cursor.close()

            for record in self.product_tree.get_children():
                self.product_tree.delete(record)

            for row in rows:
                self.product_tree.insert("", tk.END, values=row)
        except mysql.connector.Error as err:
            print("Database error:", err)

    def add_new_product(self):
        product_name = self.new_product_name.get()
        price = self.new_price.get()
        quantity = self.new_quantity.get()
        supplier_id = self.new_supplier_id.get()
        category_name = self.new_category.get()

        if not all([product_name, price, quantity, supplier_id, category_name]):
            print("All fields are required")
            return

        try:
            price = float(price)
            quantity = int(quantity)
            supplier_id = int(supplier_id)
        except ValueError:
            print("Invalid input for price, quantity, or supplier ID")
            return

        try:
            cursor = project_db.cursor()

            # Insert into the Product table
            insert_product_query = "INSERT INTO Product (ProductName, UnitPrice, Quantity) VALUES (%s, %s, %s)"
            cursor.execute(insert_product_query, (product_name, price, quantity))
            project_db.commit()

            # Get the newly inserted product's ID
            cursor.execute("SELECT LAST_INSERT_ID()")
            product_id = cursor.fetchone()[0]

            # Insert into the ProductSuppliers table
            insert_product_supplier_query = "INSERT INTO ProductSuppliers (ProductID, SupplierID) VALUES (%s, %s)"
            cursor.execute(insert_product_supplier_query, (product_id, supplier_id))
            project_db.commit()

            # Retrieve the category ID from the category name
            cursor.execute("SELECT CategoryID FROM Categories WHERE CategoryName = %s", (category_name,))
            category_id = cursor.fetchone()[0]

            # Insert into the ProductCategory table
            insert_product_category_query = "INSERT INTO ProductCategory (ProductID, CategoryID) VALUES (%s, %s)"
            cursor.execute(insert_product_category_query, (product_id, category_id))
            project_db.commit()

            print("New product added successfully.")
            self.show_products_data()
        except mysql.connector.Error as err:
            print("Error in add_new_product:", err)
            project_db.rollback()
        finally:
            self.new_product_name.delete(0, tk.END)
            self.new_price.delete(0, tk.END)
            self.new_quantity.delete(0, tk.END)
            self.new_supplier_id.delete(0, tk.END)
            self.new_category.delete(0, tk.END)
            cursor.close()


    def add_new_supplier(self):
        supplier_name = self.new_supplier_name.get()
        contact_name = self.new_contact_name.get()
        address = self.new_address.get()
        email = self.new_email.get()

        # Insert into database
        try:
            cursor = project_db.cursor()
            insert_query = "INSERT INTO Suppliers (SupplierName, ContactName, Address, Email) VALUES (%s, %s, %s, %s)"
            cursor.execute(insert_query, (supplier_name, contact_name, address, email))
            project_db.commit()
            print("New supplier added successfully.")
            self.show_suppliers_data()
        except mysql.connector.Error as err:
            print("Error in add_new_supplier:", err)
            project_db.rollback()
        finally:
            self.new_supplier_name.delete(0,tk.END)
            self.new_contact_name.delete(0,tk.END)
            self.new_address.delete(0,tk.END)
            self.new_email.delete(0,tk.END)
            cursor.close()   
            
    def get_categories_from_database(self):
        cursor = project_db.cursor()
        cursor.execute("SELECT CategoryName, CategoryID FROM Categories")
        categories = [category[0] for category in cursor.fetchall()]
        return categories

    def show_filtered_data(self):
        print("Refreshing filtered products data...")
        try:
            cursor = project_db.cursor()

            selected_category = self.selected_category.get()

            query = """
                SELECT 
                    p.ProductID, 
                    p.ProductName, 
                    p.UnitPrice, 
                    p.Quantity,
                    GROUP_CONCAT(DISTINCT s.SupplierName SEPARATOR ', ') AS SupplierNames
                FROM 
                    Product p
                LEFT JOIN 
                    ProductSuppliers ps ON p.ProductID = ps.ProductID
                LEFT JOIN 
                    Suppliers s ON ps.SupplierID = s.SupplierID
                LEFT JOIN 
                    ProductCategory pc ON p.ProductID = pc.ProductID
                LEFT JOIN 
                    Categories c ON pc.CategoryID = c.CategoryID
            """

            if selected_category:
                query += " WHERE c.CategoryName = %s"
                query += " GROUP BY p.ProductID, p.ProductName, p.UnitPrice, p.Quantity"
                cursor.execute(query, (selected_category,))
            else:
                query += " GROUP BY p.ProductID, p.ProductName, p.UnitPrice, p.Quantity"
                cursor.execute(query)

            rows = cursor.fetchall()
            cursor.close()

            # Clear existing data in the treeview
            for record in self.product_tree.get_children():
                self.product_tree.delete(record)

            # Insert the filtered data into the treeview
            for row in rows:
                self.product_tree.insert("", tk.END, values=row)

        except mysql.connector.Error as err:
            print("Database error:", err)


        
        print("Adding user...")
        cursor = project_db.cursor
        
        cursor.execute("INSERT INTO Users")
        self.clear_labels()
    
    def show_products(self):
        print("Refreshing products data...")
        try:
            cursor = project_db.cursor()

            # Modified query to concatenate supplier names
            query = """
                SELECT 
                    Product.ProductID, 
                    Product.ProductName, 
                    GROUP_CONCAT(DISTINCT Suppliers.SupplierName SEPARATOR ', ') AS SupplierNames
                FROM Product
                LEFT JOIN ProductSuppliers ON Product.ProductID = ProductSuppliers.ProductID
                LEFT JOIN Suppliers ON ProductSuppliers.SupplierID = Suppliers.SupplierID
                GROUP BY Product.ProductID;
            """
            cursor.execute(query)
            rows = cursor.fetchall()

            # Clear existing data in the treeview
            for record in self.products_tree.get_children():
                self.products_tree.delete(record)

            # Insert new data into the treeview
            for row in rows:
                self.products_tree.insert("", tk.END, values=row)

        except mysql.connector.Error as err:
            print("Database error:", err)
        finally:
            if cursor:
                cursor.close()

    def show_suppliers_data(self):
        print("Refreshing suppliers data...")
        try:
            cursor = project_db.cursor()
            cursor.execute("SELECT SupplierID, SupplierName, ContactName, Address, Email FROM Suppliers")
            rows = cursor.fetchall()

            for record in self.suppliers_tree.get_children():
                self.suppliers_tree.delete(record)

            for row in rows:
                self.suppliers_tree.insert("", tk.END, values=row)

        except mysql.connector.Error as err:
            print("Database error:", err)
        finally:
            if cursor:
                cursor.close()

    def add_order(self):
        product_id = self.order_product_id.get()
        supplier_id = self.order_supplier_id.get()
        quantity = self.order_quantity.get()
        unit_cost = self.order_unit_cost.get()  # Get the UnitCost

        try:
            if product_id and supplier_id and quantity and unit_cost:
                product_id = int(product_id)
                supplier_id = int(supplier_id)
                quantity = int(quantity)
                unit_cost = float(unit_cost)  # Convert UnitCost to float
                cursor = project_db.cursor()

                order_insert_query = "INSERT INTO Orders (OrderDate, SupplierID, ProductID, UserID, OrderQuantity, UnitCost) VALUES (NOW(), %s, %s, %s, %s, %s)"
                cursor.execute(order_insert_query, (supplier_id, product_id, self.user_id, quantity, unit_cost))

                product_update_query = "UPDATE Product SET Quantity = Quantity + %s WHERE ProductID = %s"
                cursor.execute(product_update_query, (quantity, product_id))

                project_db.commit()
                print(
                    f"Order added successfully for ProductID: {product_id}, SupplierID: {supplier_id}, Quantity: {quantity}, UnitCost: {unit_cost}")
                self.show_orders_data()
                
            else:
                print("Product ID, Supplier ID, Quantity, and Unit Cost are required.")

        except mysql.connector.Error as err:
            print("Error in add_order:", err)
            project_db.rollback()
        finally:
            self.order_product_id.delete(0, tk.END)
            self.order_supplier_id.delete(0, tk.END)
            self.order_quantity.delete(0, tk.END)
            self.order_unit_cost.delete(0, tk.END)
            cursor.close()

    def show_sales_data(self):
        try:
            cursor = project_db.cursor()
            # Adjust the SELECT query to include SaleID and sort by it
            cursor.execute(
               "SELECT"
           " Sales.SaleID,"
           " Sales.ProductID,"
          "  Sales.SaleQuantity,"
           " Product.ProductName,"
           " Product.UnitPrice,"
          "  (SELECT GROUP_CONCAT(Suppliers.SupplierName SEPARATOR ', ')"
          "  FROM"
           " ProductSuppliers"
           " JOIN"
           " Suppliers "
           " ON"
           " ProductSuppliers.SupplierID = Suppliers.SupplierID"
          "  WHERE"
           " ProductSuppliers.ProductID = Sales.ProductID) AS"
           " SupplierNames,"
          "  Sales.UserID,"
         "   Sales.SalesDate"
         "   FROM"
          "  Sales"
          "  JOIN"
          "  Product"
           " ON"
          "  Sales.ProductID = Product.ProductID"
           " ORDER"
          "  BY"
          "  Sales.SaleID"
            )
            rows = cursor.fetchall()
            cursor.close()

            for record in self.sales_tree.get_children():
                self.sales_tree.delete(record)

            for row in rows:
                self.sales_tree.insert("", tk.END, values=row)

        except mysql.connector.Error as err:
            print("Database error:", err)

    def record_sale(self):
        product_id = self.sale_product_id.get()
        quantity = self.sale_quantity.get()

        try:
            if product_id and quantity:
                product_id = int(product_id)
                quantity = int(quantity)
                cursor = project_db.cursor()

                # Include UserID in the sale_insert_query
                sale_insert_query = "INSERT INTO Sales (SalesDate, ProductID, UserID, SaleQuantity) VALUES (NOW(), %s, %s, %s)"
                cursor.execute(sale_insert_query, (product_id, self.user_id, quantity))

                # Update the product quantity
                product_update_query = "UPDATE Product SET Quantity = Quantity - %s WHERE ProductID = %s"
                cursor.execute(product_update_query, (quantity, product_id))

                project_db.commit()
                print(f"Sale recorded successfully for ProductID: {product_id}, Quantity: {quantity}")
                self.show_sales_data()  # Refresh sales display
            else:
                print("Product ID and Quantity are required.")

        except mysql.connector.Error as err:
            print("Error in record_sale:", err)
            project_db.rollback()
        finally:
            self.clear_labels()
            cursor.close()

    def refresh_products(self):
        """
        Refresh the products data in the products tree view.
        """
        print("Refreshing products data...")
        try:
            cursor = project_db.cursor()

            # Modified query to concatenate supplier names
            query = """
                SELECT 
                    Product.ProductID, 
                    Product.ProductName, 
                    GROUP_CONCAT(DISTINCT Suppliers.SupplierName SEPARATOR ', ') AS SupplierNames
                FROM Product
                LEFT JOIN ProductSuppliers ON Product.ProductID = ProductSuppliers.ProductID
                LEFT JOIN Suppliers ON ProductSuppliers.SupplierID = Suppliers.SupplierID
                GROUP BY Product.ProductID;
            """
            cursor.execute(query)
            rows = cursor.fetchall()

            # Clear existing data in the treeview
            for record in self.products_tree.get_children():
                self.products_tree.delete(record)

            # Insert new data into the treeview
            for row in rows:
                self.products_tree.insert("", tk.END, values=row)

        except mysql.connector.Error as err:
            print("Database error:", err)
        finally:
            if cursor:
                cursor.close()

    def refresh_suppliers(self):
       
        print("Refreshing suppliers data...")
        try:
            cursor = project_db.cursor()
            cursor.execute("SELECT SupplierID, SupplierName, ContactName, Address, Email FROM Suppliers")
            rows = cursor.fetchall()

            # Clear existing data in the treeview
            self.suppliers_tree.delete(*self.suppliers_tree.get_children())

            # Insert new data into the treeview
            for row in rows:
                self.suppliers_tree.insert("", tk.END, values=row)

            print("Suppliers data refreshed successfully.")

        except mysql.connector.Error as err:
            print("Database error:", err)

        finally:
            if cursor:
                cursor.close()

    def show_datas(self):
        self.show_products()
        self.show_suppliers_data()
        

# Create the main window
if __name__ == "__main__":
    root = tk.Tk()
    login_app = LoginWindow(root)
    root.mainloop()