INSERT INTO `Categories` (`CategoryName`, `Description`) VALUES
('Fruits & Vegetables', 'Fresh and healthy fruits and vegetables'),
('Meat & Poultry', 'Various kinds of meat and poultry products'),
('Seafood', 'Fresh and frozen seafood items'),
('Snacks', 'Chips, cookies, and other snack items'),
('Frozen Foods', 'Frozen meals and ingredients'),
('Beauty', 'Personal care and health products'),
('Cleaning Supplies', 'Household cleaning and maintenance items'),
('Beverages', 'Drinks, juices, and other liquids'),
('Bakery', 'Fresh bread and bakery products'),
('Dairy', 'Milk, cheese, and other dairy products'),
('Pasta & Grains', 'Various kinds of pasta and grains'),
('Spices & Herbs', 'Cooking spices and herbs'),
('Alcoholic Beverages', 'Wine, beer, and spirits'),
('Baby Products', 'Baby food, formula, diapers, wipes, and care items'),
('Pet Supplies', 'Food, treats, toys, and grooming products for pets'),
('Diet & Nutrition', 'Diet-specific foods and nutritional supplements'),
('Pharmacy', 'Over-the-counter medications and wellness products'),
('Electronics & Batteries', 'Basic electronic items and batteries'),
('Housewares & Kitchen Goods', 'Kitchen appliances and cookware'),
('Gluten-Free Products', 'Products free from gluten, suitable for those with gluten intolerance or celiac disease');


INSERT INTO `Suppliers` (`SupplierName`, `ContactName`, `ContactTitle`, `Address`, `Email`) VALUES
('Organic Farms', 'Emily Turner', 'Product Manager', '789 Green Rd., Naturetown', 'emily@organicfarms.com'),
('MeatMasters Inc.', 'Bob White', 'CEO', '321 Meat St., Grilltown', 'bob@meatmasters.com'),
('OceanFresh Seafoods', 'Linda Fisher', 'Supply Manager', '101 Ocean Ave., Seaport', 'linda@oceanfresh.com'),
('SnackWorld', 'Gary Crunch', 'Marketing Director', '234 Snack Blvd., Tastycity', 'gary@snackworld.com'),
('CoolFrost Foods', 'Nancy Ice', 'Logistics Coordinator', '567 Freeze Ln., Coldtown', 'nancy@coolfrost.com'),
('GrainHouse', 'Laura Fields', 'Operations Manager', '345 Grain Rd., Farmtown', 'laura@grainhouse.com'),
('SweetTreats', 'David Candy', 'Owner', '789 Sweet St., Sugartown', 'david@sweettreats.com'),
('SpiceWorld', 'Anita Spice', 'CEO', '159 Spice Ave., Flavorcity', 'anita@spiceworld.com'),
('DrinkDelights', 'Mike Soda', 'Marketing Manager', '456 Liquid Ln., Drinktown', 'mike@drinkdelights.com'),
('Barley & Hops', 'Steve Brewer', 'Brewmaster', '321 Brew St., Beertown', 'steve@barleyhops.com'),
('Global Fruits Ltd.', 'Sara Pear', 'Export Manager', '202 Orchard Rd., Fruitville', 'sara@globalfruits.com'),
('Tom`s Dairy', 'Tom Cheese', 'Owner', '998 Dairy Ln., Milkcity', 'tom@localdairy.com'),
('Veggie Fresh', 'Ivy Green', 'Procurement Manager', '333 Veg St., Saladville', 'ivy@veggiefresh.com'),
('Butcher Block', 'Max Steak', 'Butcher', '444 Meat Ave., Steakville', 'max@butcherblock.com'),
('Sea Delights', 'Coral Reef', 'Sales Manager', '555 Ocean Rd., Fishville', 'coral@seadelights.com'),
('Bakery Bliss', 'Ella Bread', 'Baker', '222 Dough St., Breadtown', 'ella@bakerybliss.com'),
('Snack Haven', 'Chris Crunch', 'Product Manager', '666 Snack Blvd., Snackcity', 'chris@snackhaven.com'),
('Beverage Bros.', 'Joe Brew', 'Marketing Director', '777 Drink Dr., Beverageburg', 'joe@beveragebros.com'),
('Logar`s Wholesaler', 'Logar Goralıoğlu', 'Owner', '216 Arif Blvd., Gora', 'KLogar@LogarsWholesaler.com.gr'),
('GreenValley Organics', 'Emma Field', 'CEO', '101 Nature St., EcoCity', 'emma@greenvalley.com'),
('Global Grains', 'Ryan Wheat', 'Export Manager', '202 Grain Rd., Farmtown', 'ryan@globalgrains.com'),
('Prime Dairy', 'Natalie Milk', 'Owner', '303 Dairy Ln., Freshville', 'natalie@primedairy.com'),
('Ocean Bounty', 'Lucas Fisher', 'Sales Manager', '404 Sea St., Oceanville', 'lucas@oceanbounty.com'),
('Sweet Sensations', 'Amy Sugar', 'Marketing Director', '505 Sweet Ave., Candytown', 'amy@sweetsensations.com'),
('Bakers Delight', 'Olivia Dough', 'Head Baker', '606 Bread St., Bakersville', 'olivia@bakersdelight.com'),
('TechGadgets Inc.', 'Leo Tech', 'Supply Chain Manager', '1010 Electron Ave., TechCity', 'leo@techgadgets.com'),
('BrightLife Lighting', 'Isla Bright', 'Sales Director', '202 Lumens Rd., LightTown', 'isla@brightlifelighting.com'),
('KitchenEssentials Co.', 'Emma Cook', 'Product Manager', '303 Culinary St., Cooksville', 'emma@kitchenessentials.com'),
('Homeware Distributors', 'Jack Home', 'CEO', '404 Living Ln., HomeCity', 'jack@homewaredistributors.com'),
('LittleCare Supplies', 'Sophia Nurture', 'Head of Sales', '505 Baby Blvd., NurseryTown', 'sophia@littlecare.com'),
('InfantNeeds Ltd.', 'Mia Baby', 'Managing Director', '606 Tot Ave., Diaperville', 'mia@infantneeds.com'),
('PetWorld Suppliers', 'Ethan Paws', 'Operations Manager', '707 Pet St., Animalia', 'ethan@petworldsuppliers.com'),
('FurryFriends Goods', 'Oliver Whisker', 'Owner', '808 Furr Rd., Petville', 'oliver@furryfriendsgoods.com'),
('HealthHarvest Naturals', 'Lily Wellness', 'Product Specialist', '909 Health St., NutriCity', 'lily@healthharvest.com'),
('NutriChoice Distributors', 'James Vita', 'CEO', '1011 Fit Ln., Wellville', 'james@nutrichoice.com'),
('MediSafe Pharmaceuticals', 'Noah Remedy', 'Supply Chain Director', '111 Med St., PharmaTown', 'noah@medisafe.com'),
('Wellness Warehouse', 'Ava Cure', 'Head of Procurement', '212 Health Ave., RemedyCity', 'ava@wellnesswarehouse.com'),
('AromaSpice Traders', 'Jacob Flavor', 'Export Manager', '313 Aroma St., Spiceville', 'jacob@aromaspice.com'),
('HerbGarden Delights', 'Evelyn Green', 'Product Manager', '414 Herb Rd., FlavorTown', 'evelyn@herbgardendelights.com'),
('GlowBeauty Co.', 'Grace Shine', 'Sales Manager', '515 Glow St., CosmoCity', 'grace@glowbeautyco.com'),
('PureSkin Essentials', 'Liam Care', 'Supply Coordinator', '616 Skin Ave., Beautyville', 'liam@pureskinessentials.com');



INSERT INTO `Product` (`ProductName`, `UnitPrice`, `Quantity`) VALUES
('Bananas', 0.59, 150),
('Chicken Breast', 5.99, 80),
('Salmon Fillets', 10.99, 60),
('Potato Chips', 2.49, 120),
('Frozen Pizza', 4.99, 100),
('Shampoo', 6.49, 90),
('Laundry Detergent', 11.99, 85),
('Orange Juice', 3.49, 110),
('Baguette', 1.99, 70),
('Turkish Yogurt', 0.99, 200),
('Spaghetti', 1.29, 100),
('Milk Chocolate', 1.99, 150),
('Black Pepper', 3.49, 70),
('Cola', 0.99, 200),
('Craft Beer', 2.49, 80),
('Strawberries', 3.99, 100),
('Lettuce', 1.49, 200),
('Beef Steak', 7.99, 80),
('Shrimps', 12.99, 60),
('Croissants', 2.49, 120),
('Chocolate Bar', 1.29, 150),
('Mineral Water', 0.59, 300),
('Energy Drink', 1.99, 200),
('Mixed Nuts', 3.49, 100),
('Doritos Nacho Cheese Flavored Tortilla Chips', 3.99, 100),
('Lay`s Classic Potato Chips', 8.33, 120),
('Oreo Chocolate Sandwich Cookies', 14.3 ,555),
('Pringles Original Potato Crisps', 5.2 , 150),
('Kit Kat Milk Chocolate Candy Bar',  1.25, 200),
('Coca-Cola Soda, 2 Liter', 1.99, 150),
('Pepsi Soda, 2 Liter', 1.99, 150),
('Red Bull Energy Drink, 8.4 fl oz', 2.49, 100),
('Gatorade Thirst Quencher, Fruit Punch, 20 fl oz', 1.50, 120),
('Nestle Pure Life Purified Water, 16.9 fl oz', 0.99, 200),
('Jack Daniel`s Old No. 7 Tennessee Whiskey, 750 ml', 22.99, 50),
('Tuborg Gold Lager Beer, 500 ml', 1.99, 150),
('Efes Pilsener Beer, 500 ml', 1.89, 150),
('Yellow Tail Shiraz, 750 ml', 12.99, 60),
('Chateau Ste. Michelle Chardonnay, 750 ml', 15.99, 70),
('Heineken Lager Beer, 330 ml', 2.49, 100),
('Guinness Draught Stout, 440 ml', 2.99, 80),
('Budweiser Lager Beer, 500 ml', 1.89, 120),
('Corona Extra Lager Beer, 355 ml', 2.59, 100),
('Samuel Adams Boston Lager, 355 ml', 2.49, 90),
('Barefoot Cabernet Sauvignon, 750 ml', 9.99, 60),
('Robert Mondavi Private Selection Cabernet Sauvignon, 750 ml', 11.99, 70),
('Kendall-Jackson Vintner`s Reserve Chardonnay, 750 ml', 13.99, 65),
('Meiomi Pinot Noir, 750 ml', 19.99, 50),
('Yellow Tail Merlot, 750 ml', 8.99, 75),
('Smirnoff No. 21 Vodka, 750 ml', 13.99, 70),
('Bacardi Superior White Rum, 750 ml', 14.99, 60),
('Johnnie Walker Black Label Scotch Whisky, 750 ml', 29.99, 50),
('Jose Cuervo Especial Tequila, 750 ml', 19.99, 65),
('Tanqueray London Dry Gin, 750 ml', 22.99, 60),
('Duracell AA Batteries, 10-Pack', 7.99, 100),
('Philips LED Light Bulbs, 60W, 4-Pack', 9.99, 80),
('Anker USB Charging Cable, 2m', 5.99, 120),
('Sony Wireless Bluetooth Earbuds', 59.99, 50),
('Ozeri Digital Kitchen Scale', 19.99, 70),
('T-fal Non-Stick Frying Pan, 12 inch', 24.99, 60),
('Cuisinart 6-Piece Knife Set with Block', 29.99, 50),
('Pyrex Glass Food Storage Set, 5-Pack', 19.99, 80),
('Hamilton Beach Electric Kettle, 1.5 Liter', 25.99, 70),
('Bamboo Cutting Board, Large', 12.99, 100),
('Similac Organic Baby Formula, 400g', 19.99, 80),
('Pampers Swaddlers Disposable Diapers, Size 3, 40-Pack', 14.99, 100),
('Huggies Natural Care Baby Wipes, Fragrance-Free, 3-Pack', 6.99, 120),
('Fisher-Price Infant Teething Toy, BPA-Free', 7.99, 90),
('Johnson`s Baby Shampoo, 200 ml', 8.99, 110),
('Dalin`s Baby Shampoo, 500 ml', 19.99, 110),
('Purina ONE Dry Dog Food, Chicken Flavor, 5kg', 22.99, 75),
('Tidy Cats Clumping Cat Litter, 10 L', 10.99, 100),
('KONG Classic Dog Chew Toy, Medium Size', 8.99, 120),
('Wagner`s Wild Bird Seed Mix, 2kg', 13.99, 80),
('Tetra Aquarium Filter Cartridges, 4-Pack', 14.99, 70),
('Optimum Nutrition Gold Standard Whey Protein, Vanilla, 1kg', 34.99, 60),
('Twinings Organic Green Tea, 100 Bags', 15.99, 100),
('Centrum Multivitamin Supplements, 60 Tablets', 11.99, 120),
('Nature Made Omega-3 Fish Oil Capsules, 90 Count', 17.99, 80),
('Bob`s Red Mill Gluten-Free Rolled Oats, 500g', 6.99, 110),
('Advil Ibuprofen Tablets, 200mg, 100 Count', 10.99, 100),
('Claritin Antihistamine Allergy Relief, 30 Tablets', 15.99, 80),
('Robitussin Cough Syrup, Non-Drowsy, 200ml', 8.99, 90),
('Band-Aid Adhesive Bandages, Assorted Sizes, 50-Pack', 6.99, 120),
('Braun Digital Thermometer', 14.99, 70),
('McCormick Ground Cinnamon, 100g', 4.99, 100),
('Organic Turmeric Powder by Simply Organic, 200g', 6.99, 90),
('Mixed Italian Herbs by Spice Islands, 50g', 3.49, 120),
('Peppercorn Medley by Trader Joe`s, 150g', 7.99, 80),
('Himalayan Pink Salt Grinder by Kirkland, 200g', 3.99, 110),
('Neutrogena Hydro Boost Water Gel, 100ml', 12.99, 90),
('Moroccan Oil Hair Treatment, 200ml', 19.99, 80),
('Dove Body Wash, Deep Moisture, 500ml', 8.99, 100),
('Cetaphil Gentle Skin Cleanser, 150ml', 9.99, 120),
('Coppertone Sport Sunscreen SPF 30, 200ml', 11.99, 80),
('Sütaş Milk', 15.99, 1330),
('Torku Milk', 13.99, 350),
('İçim Milk', 14.99, 458),
('Trabzon Bread', 12.50, 157),
('Turkish Bread', 1.99, 367),
('Guluten Free Bread', 18.99, 45),
('Whole Wheat Bread', 25.88, 33),
('Rye Bread', 35.99, 73),
('Multigrain Bread', 35.99, 73),
('Ciabatta Bread', 25.88, 23);

--  users
INSERT INTO `Users` (`Username`, `Password`, `Email`, `Role`) VALUES
('Tarık Buğra Ay', 'tako', 'tba@gmail.com', 'Store Manager'),
('Mehmet Fatih Çapal', 'memo', 'cap@gmail.com', 'Assistant to The Manager'),
('Mustafa Eren Soyhan', 'mıstık', 'soy@gmail.com', 'Cashier'),
('Enes Yıldız', 'enes', 'yil@gmail.com', 'Stock Associate'),
('Alperen Güvenir', 'alperen', 'guv@gmail.com', 'Maintenance'),
('Emily Hrsson ', 'emilypass', 'emily.hr@migros.com', 'HR Manager'),
('Mark Carlson', 'markpass', 'mark.it@migros.com', 'IT Support'),
('Sarah Sunyday', 'sarahpass', 'sarah.marketing@migros.com', 'Marketing Coordinator'),
('David Mcscurity', 'davidpass', 'david.security@migros.com', 'Security Officer'),
('admin', 'admin', 'admin@migros.com', 'Administrator');

-- Fruits & Vegetables
INSERT INTO ProductCategory VALUES (1, 1);   -- Bananas
INSERT INTO ProductCategory VALUES (16, 1);  -- Strawberries
INSERT INTO ProductCategory VALUES (17, 1);  -- Lettuce

-- Meat & Poultry
INSERT INTO ProductCategory VALUES (2, 2);   -- Chicken Breast
INSERT INTO ProductCategory VALUES (18, 2);  -- Beef Steak

-- Seafood
INSERT INTO ProductCategory VALUES (3, 3);   -- Salmon Fillets
INSERT INTO ProductCategory VALUES (19, 3);  -- Shrimps

-- Snacks
INSERT INTO ProductCategory VALUES (4, 4);   -- Potato Chips
INSERT INTO ProductCategory VALUES (24, 4);  -- Mixed Nuts
INSERT INTO ProductCategory VALUES (25, 4);  -- Doritos Nacho Cheese Flavored Tortilla Chips
INSERT INTO ProductCategory VALUES (26, 4);  -- Lay`s Classic Potato Chips
INSERT INTO ProductCategory VALUES (27, 4);  -- Oreo Chocolate Sandwich Cookies
INSERT INTO ProductCategory VALUES (28, 4);  -- Pringles Original Potato Crisps
INSERT INTO ProductCategory VALUES (29, 4);  -- Kit Kat Milk Chocolate Candy Bar

-- Frozen Foods
INSERT INTO ProductCategory VALUES (5, 5);   -- Frozen Pizza

-- Beauty
INSERT INTO ProductCategory VALUES (6, 6);   -- Shampoo
INSERT INTO ProductCategory VALUES (91, 6);  -- Neutrogena Hydro Boost Water Gel
INSERT INTO ProductCategory VALUES (92, 6);  -- Moroccan Oil Hair Treatment
INSERT INTO ProductCategory VALUES (93, 6);  -- Dove Body Wash, Deep Moisture
INSERT INTO ProductCategory VALUES (94, 6);  -- Cetaphil Gentle Skin Cleanser

-- Cleaning Supplies
INSERT INTO ProductCategory VALUES (7, 7);   -- Laundry Detergent

-- Beverages
INSERT INTO ProductCategory VALUES (8, 8);   -- Orange Juice
INSERT INTO ProductCategory VALUES (14, 8);  -- Cola
INSERT INTO ProductCategory VALUES (22, 8);  -- Mineral Water
INSERT INTO ProductCategory VALUES (23, 8);  -- Energy Drink
INSERT INTO ProductCategory VALUES (30, 8);  -- Coca-Cola Soda, 2 Liter
INSERT INTO ProductCategory VALUES (31, 8);  -- Pepsi Soda, 2 Liter
INSERT INTO ProductCategory VALUES (32, 8);  -- Red Bull Energy Drink
INSERT INTO ProductCategory VALUES (33, 8);  -- Gatorade Thirst Quencher
INSERT INTO ProductCategory VALUES (34, 8);  -- Nestle Pure Life Water

-- Bakery
INSERT INTO ProductCategory VALUES (9, 9);   -- Baguette
INSERT INTO ProductCategory VALUES (20, 9);  -- Croissants
INSERT INTO ProductCategory VALUES (20, 4);  -- Croissants

INSERT INTO ProductCategory VALUES (99, 9);
INSERT INTO ProductCategory VALUES (100, 9);
INSERT INTO ProductCategory VALUES (101, 9);
INSERT INTO ProductCategory VALUES (101, 20);
INSERT INTO ProductCategory VALUES (102, 9);
INSERT INTO ProductCategory VALUES (103, 9);
INSERT INTO ProductCategory VALUES (104, 9);
INSERT INTO ProductCategory VALUES (105, 9);

-- Dairy
INSERT INTO ProductCategory VALUES (10, 10); -- Turkish Yogurt
INSERT INTO ProductCategory VALUES (12, 10); -- Milk Chocolate
INSERT INTO ProductCategory VALUES (96, 10);
INSERT INTO ProductCategory VALUES (97, 10);
INSERT INTO ProductCategory VALUES (98, 10);
INSERT INTO ProductCategory VALUES (12, 8); -- Milk Chocolate
INSERT INTO ProductCategory VALUES (96, 8);
INSERT INTO ProductCategory VALUES (97, 8);
INSERT INTO ProductCategory VALUES (98, 8);

-- Pasta & Grains
INSERT INTO ProductCategory VALUES (11, 11); -- Spaghetti

-- Spices & Herbs
INSERT INTO ProductCategory VALUES (13, 12); -- Black Pepper
INSERT INTO ProductCategory VALUES (86, 12); -- McCormick Ground Cinnamon
INSERT INTO ProductCategory VALUES (87, 12); -- Organic Turmeric Powder
INSERT INTO ProductCategory VALUES (88, 12); -- Mixed Italian Herbs
INSERT INTO ProductCategory VALUES (89, 12); -- Peppercorn Medley
INSERT INTO ProductCategory VALUES (90, 12); -- Himalayan Pink Salt

-- Alcoholic Beverages
INSERT INTO ProductCategory VALUES (15, 13); -- Craft Beer
INSERT INTO ProductCategory VALUES (35, 13); -- Jack Daniel`s Whiskey
INSERT INTO ProductCategory VALUES (36, 13); -- Tuborg Gold Lager Beer
INSERT INTO ProductCategory VALUES (37, 13); -- Efes Pilsener Beer
INSERT INTO ProductCategory VALUES (38, 13); -- Yellow Tail Shiraz
INSERT INTO ProductCategory VALUES (39, 13); -- Chateau Ste. Michelle Chardonnay
INSERT INTO ProductCategory VALUES (40, 13); -- Heineken Lager Beer
INSERT INTO ProductCategory VALUES (41, 13); -- Guinness Draught Stout
INSERT INTO ProductCategory VALUES (42, 13); -- Budweiser Lager Beer
INSERT INTO ProductCategory VALUES (43, 13); -- Corona Extra Lager Beer
INSERT INTO ProductCategory VALUES (44, 13); -- Samuel Adams Boston Lager
INSERT INTO ProductCategory VALUES (45, 13); -- Barefoot Cabernet Sauvignon
INSERT INTO ProductCategory VALUES (46, 13); -- Robert Mondavi Cabernet Sauvignon
INSERT INTO ProductCategory VALUES (47, 13); -- Kendall-Jackson Chardonnay
INSERT INTO ProductCategory VALUES (48, 13); -- Meiomi Pinot Noir
INSERT INTO ProductCategory VALUES (49, 13); -- Yellow Tail Merlot
INSERT INTO ProductCategory VALUES (50, 13); -- Smirnoff Vodka
INSERT INTO ProductCategory VALUES (51, 13); -- Bacardi White Rum
INSERT INTO ProductCategory VALUES (52, 13); -- Johnnie Walker Black Label Whisky
INSERT INTO ProductCategory VALUES (53, 13); -- Jose Cuervo Tequila
INSERT INTO ProductCategory VALUES (54, 13); -- Tanqueray Gin

INSERT INTO ProductCategory VALUES (15, 8); -- Craft Beer
INSERT INTO ProductCategory VALUES (35, 8); -- Jack Daniel`s Whiskey
INSERT INTO ProductCategory VALUES (36, 8); -- Tuborg Gold Lager Beer
INSERT INTO ProductCategory VALUES (37, 8); -- Efes Pilsener Beer
INSERT INTO ProductCategory VALUES (38, 8); -- Yellow Tail Shiraz
INSERT INTO ProductCategory VALUES (39, 8); -- Chateau Ste. Michelle Chardonnay
INSERT INTO ProductCategory VALUES (40, 8); -- Heineken Lager Beer
INSERT INTO ProductCategory VALUES (41, 8); -- Guinness Draught Stout
INSERT INTO ProductCategory VALUES (42, 8); -- Budweiser Lager Beer
INSERT INTO ProductCategory VALUES (43, 8); -- Corona Extra Lager Beer
INSERT INTO ProductCategory VALUES (44, 8); -- Samuel Adams Boston Lager
INSERT INTO ProductCategory VALUES (45, 8); -- Barefoot Cabernet Sauvignon
INSERT INTO ProductCategory VALUES (46, 8); -- Robert Mondavi Cabernet Sauvignon
INSERT INTO ProductCategory VALUES (47, 8); -- Kendall-Jackson Chardonnay
INSERT INTO ProductCategory VALUES (48, 8); -- Meiomi Pinot Noir
INSERT INTO ProductCategory VALUES (49, 8); -- Yellow Tail Merlot
INSERT INTO ProductCategory VALUES (50, 8); -- Smirnoff Vodka
INSERT INTO ProductCategory VALUES (51, 8); -- Bacardi White Rum
INSERT INTO ProductCategory VALUES (52, 8); -- Johnnie Walker Black Label Whisky
INSERT INTO ProductCategory VALUES (53, 8); -- Jose Cuervo Tequila
INSERT INTO ProductCategory VALUES (54, 8); -- Tanqueray Gin

-- Baby Products
INSERT INTO ProductCategory VALUES (65, 14); -- Similac Organic Baby Formula
INSERT INTO ProductCategory VALUES (66, 14); -- Pampers Swaddlers Diapers
INSERT INTO ProductCategory VALUES (66, 17);
INSERT INTO ProductCategory VALUES (67, 14); -- Huggies Natural Care Wipes
INSERT INTO ProductCategory VALUES (67, 17);
INSERT INTO ProductCategory VALUES (67, 7);
INSERT INTO ProductCategory VALUES (67, 6);
INSERT INTO ProductCategory VALUES (68, 14); -- Fisher-Price Teething Toy
INSERT INTO ProductCategory VALUES (69, 14); -- Johnson`s Baby Shampoo
INSERT INTO ProductCategory VALUES (69, 17);
INSERT INTO ProductCategory VALUES (69, 6);
INSERT INTO ProductCategory VALUES (70, 14); -- Dalin`s Baby Shampoo
INSERT INTO ProductCategory VALUES (70, 17);
INSERT INTO ProductCategory VALUES (70, 6);

-- Pet Supplies
INSERT INTO ProductCategory VALUES (71, 15); -- Purina ONE Dry Dog Food
INSERT INTO ProductCategory VALUES (72, 15); -- Tidy Cats Clumping Cat Litter
INSERT INTO ProductCategory VALUES (73, 15); -- KONG Classic Dog Chew Toy
INSERT INTO ProductCategory VALUES (74, 15); -- Wagner`s Wild Bird Seed Mix
INSERT INTO ProductCategory VALUES (75, 15); -- Tetra Aquarium Filter Cartridges

-- Diet & Nutrition
INSERT INTO ProductCategory VALUES (76, 16); -- Optimum Nutrition Whey Protein
INSERT INTO ProductCategory VALUES (76, 17);
INSERT INTO ProductCategory VALUES (77, 16); -- Twinings Organic Green Tea
INSERT INTO ProductCategory VALUES (77, 8);
INSERT INTO ProductCategory VALUES (78, 16); -- Centrum Multivitamin Supplements
INSERT INTO ProductCategory VALUES (79, 16); -- Nature Made Omega-3 Fish Oil
INSERT INTO ProductCategory VALUES (78, 17); 
INSERT INTO ProductCategory VALUES (79, 17);
INSERT INTO ProductCategory VALUES (78, 6); 
INSERT INTO ProductCategory VALUES (79, 6);
-- Pharmacy
INSERT INTO ProductCategory VALUES (81, 17); -- Advil Ibuprofen Tablets
INSERT INTO ProductCategory VALUES (82, 17); -- Claritin Antihistamine
INSERT INTO ProductCategory VALUES (83, 17); -- Robitussin Cough Syrup
INSERT INTO ProductCategory VALUES (84, 17); -- Band-Aid Adhesive Bandages
INSERT INTO ProductCategory VALUES (85, 17); -- Braun Digital Thermometer

-- Electronics & Batteries
INSERT INTO ProductCategory VALUES (55, 18); -- Duracell AA Batteries
INSERT INTO ProductCategory VALUES (56, 18); -- Philips LED Light Bulbs
INSERT INTO ProductCategory VALUES (57, 18); -- Anker USB Charging Cable
INSERT INTO ProductCategory VALUES (58, 18); -- Sony Wireless Bluetooth Earbuds

-- Housewares & Kitchen Goods
INSERT INTO ProductCategory VALUES (59, 19); -- Ozeri Digital Kitchen Scale
INSERT INTO ProductCategory VALUES (60, 19); -- T-fal Non-Stick Frying Pan
INSERT INTO ProductCategory VALUES (61, 19); -- Cuisinart Knife Set
INSERT INTO ProductCategory VALUES (62, 19); -- Pyrex Glass Food Storage Set
INSERT INTO ProductCategory VALUES (63, 19); -- Hamilton Beach Electric Kettle
INSERT INTO ProductCategory VALUES (64, 19); -- Bamboo Cutting Board


INSERT INTO ProductCategory VALUES (80, 4); 
INSERT INTO ProductCategory VALUES (80, 16); 
INSERT INTO ProductCategory VALUES (80, 20); 
INSERT INTO ProductCategory VALUES (95, 17); 
INSERT INTO ProductCategory VALUES (95, 6); 



-- Assigning suppliers to products

-- Organic Farms supplies various products
INSERT INTO ProductSuppliers VALUES (1, 1);   -- Bananas
INSERT INTO ProductSuppliers VALUES (16, 1);  -- Strawberries
INSERT INTO ProductSuppliers VALUES (17, 1);  -- Lettuce

-- MeatMasters Inc. supplies meat products
INSERT INTO ProductSuppliers VALUES (2, 2);   -- Chicken Breast
INSERT INTO ProductSuppliers VALUES (18, 2);  -- Beef Steak

-- OceanFresh Seafoods supplies seafood
INSERT INTO ProductSuppliers VALUES (3, 3);   -- Salmon Fillets
INSERT INTO ProductSuppliers VALUES (19, 3);  -- Shrimps

-- SnackWorld supplies snack products
INSERT INTO ProductSuppliers VALUES (4, 4);   -- Potato Chips
INSERT INTO ProductSuppliers VALUES (24, 4);  -- Mixed Nuts

-- CoolFrost Foods supplies frozen foods
INSERT INTO ProductSuppliers VALUES (5, 5);   -- Frozen Pizza

-- GrainHouse supplies grains and related products
INSERT INTO ProductSuppliers VALUES (11, 6);  -- Spaghetti

-- SweetTreats supplies sweet products
INSERT INTO ProductSuppliers VALUES (12, 7);  -- Milk Chocolate
INSERT INTO ProductSuppliers VALUES (21, 7);  -- Chocolate Bar

-- SpiceWorld supplies spices
INSERT INTO ProductSuppliers VALUES (13, 8);  -- Black Pepper

-- DrinkDelights supplies beverages
INSERT INTO ProductSuppliers VALUES (8, 9);   -- Orange Juice
INSERT INTO ProductSuppliers VALUES (14, 9);  -- Cola

-- Barley & Hops supplies alcoholic beverages
INSERT INTO ProductSuppliers VALUES (15, 10); -- Craft Beer

-- Global Fruits Ltd. also supplies fruits
INSERT INTO ProductSuppliers VALUES (1, 11);  -- Bananas
INSERT INTO ProductSuppliers VALUES (16, 11); -- Strawberries

-- Tom's Dairy supplies dairy products
INSERT INTO ProductSuppliers VALUES (10, 12); -- Turkish Yogurt

-- Veggie Fresh supplies vegetables
INSERT INTO ProductSuppliers VALUES (17, 13); -- Lettuce

-- Butcher Block supplies meat products
INSERT INTO ProductSuppliers VALUES (2, 14);  -- Chicken Breast

-- Sea Delights supplies seafood
INSERT INTO ProductSuppliers VALUES (3, 15);  -- Salmon Fillets

-- Bakery Bliss supplies bakery products
INSERT INTO ProductSuppliers VALUES (9, 16);  -- Baguette

-- Snack Haven supplies snack products
INSERT INTO ProductSuppliers VALUES (4, 17);  -- Potato Chips

-- Beverage Bros. supplies beverages
INSERT INTO ProductSuppliers VALUES (8, 18);  -- Orange Juice

-- Logar's Wholesaler supplies various products
INSERT INTO ProductSuppliers VALUES (6, 19);  -- Shampoo

-- GreenValley Organics supplies organic products
INSERT INTO ProductSuppliers VALUES (1, 20);  -- Bananas

-- Global Grains supplies grains
INSERT INTO ProductSuppliers VALUES (11, 21); -- Spaghetti

-- Prime Dairy supplies dairy products
INSERT INTO ProductSuppliers VALUES (10, 22); -- Turkish Yogurt

-- Ocean Bounty supplies seafood
INSERT INTO ProductSuppliers VALUES (3, 23);  -- Salmon Fillets

-- Sweet Sensations supplies sweet products
INSERT INTO ProductSuppliers VALUES (12, 24); -- Milk Chocolate

-- Bakers Delight supplies bakery products
INSERT INTO ProductSuppliers VALUES (9, 25);  -- Baguette

-- TechGadgets Inc. supplies electronics
INSERT INTO ProductSuppliers VALUES (55, 26); -- Duracell AA Batteries

-- BrightLife Lighting supplies lighting products
INSERT INTO ProductSuppliers VALUES (56, 27); -- Philips LED Light Bulbs

-- KitchenEssentials Co. supplies kitchenware
INSERT INTO ProductSuppliers VALUES (59, 28); -- Ozeri Digital Kitchen Scale

-- Homeware Distributors supplies housewares
INSERT INTO ProductSuppliers VALUES (60, 29); -- T-fal Non-Stick Frying Pan

-- LittleCare Supplies supplies baby products
INSERT INTO ProductSuppliers VALUES (65, 30); -- Similac Organic Baby Formula

-- InfantNeeds Ltd. supplies baby products
INSERT INTO ProductSuppliers VALUES (66, 31); -- Pampers Swaddlers Disposable Diapers

-- PetWorld Suppliers supplies pet products
INSERT INTO ProductSuppliers VALUES (71, 32); -- Purina ONE Dry Dog Food

-- FurryFriends Goods supplies pet products
INSERT INTO ProductSuppliers VALUES (72, 33); -- Tidy Cats Clumping Cat Litter

-- HealthHarvest Naturals supplies health products
INSERT INTO ProductSuppliers VALUES (76, 34); -- Optimum Nutrition Whey Protein

-- NutriChoice Distributors supplies dietary supplements
INSERT INTO ProductSuppliers VALUES (77, 35); -- Twinings Organic Green Tea

-- MediSafe Pharmaceuticals supplies pharmacy products
INSERT INTO ProductSuppliers VALUES (81, 36); -- Advil Ibuprofen Tablets

-- Wellness Warehouse supplies health and wellness products
INSERT INTO ProductSuppliers VALUES (82, 37); -- Claritin Antihistamine

-- AromaSpice Traders supplies spices
INSERT INTO ProductSuppliers VALUES (86, 38); -- McCormick Ground Cinnamon

-- HerbGarden Delights supplies herbs
INSERT INTO ProductSuppliers VALUES (87, 39); -- Organic Turmeric Powder

-- GlowBeauty Co. supplies beauty products
INSERT INTO ProductSuppliers VALUES (91, 40); -- Neutrogena Hydro Boost Water Gel

-- PureSkin Essentials supplies beauty products
INSERT INTO ProductSuppliers VALUES (92, 41); -- Moroccan Oil Hair Treatment


-- Ocean Bounty supplies various seafood
INSERT INTO ProductSuppliers VALUES (19, 23); -- Shrimps

-- Beverage Bros. supplies various beverages
INSERT INTO ProductSuppliers VALUES (14, 18); -- Cola
INSERT INTO ProductSuppliers VALUES (30, 18); -- Coca-Cola Soda, 2 Liter
INSERT INTO ProductSuppliers VALUES (31, 18); -- Pepsi Soda, 2 Liter
INSERT INTO ProductSuppliers VALUES (32, 18); -- Red Bull Energy Drink
INSERT INTO ProductSuppliers VALUES (33, 18); -- Gatorade Thirst Quencher
INSERT INTO ProductSuppliers VALUES (34, 18); -- Nestle Pure Life Water

-- Barley & Hops supplies various alcoholic beverages
INSERT INTO ProductSuppliers VALUES (35, 10); -- Jack Daniel`s Whiskey
INSERT INTO ProductSuppliers VALUES (36, 10); -- Tuborg Gold Lager Beer
INSERT INTO ProductSuppliers VALUES (37, 10); -- Efes Pilsener Beer
INSERT INTO ProductSuppliers VALUES (38, 10); -- Yellow Tail Shiraz
INSERT INTO ProductSuppliers VALUES (39, 10); -- Chateau Ste. Michelle Chardonnay
INSERT INTO ProductSuppliers VALUES (40, 10); -- Heineken Lager Beer
INSERT INTO ProductSuppliers VALUES (41, 10); -- Guinness Stout
INSERT INTO ProductSuppliers VALUES (42, 10); -- Budweiser Beer
INSERT INTO ProductSuppliers VALUES (43, 10); -- Corona Extra Beer
INSERT INTO ProductSuppliers VALUES (44, 10); -- Samuel Adams Boston Lager
INSERT INTO ProductSuppliers VALUES (45, 10); -- Barefoot Cabernet Sauvignon
INSERT INTO ProductSuppliers VALUES (46, 10); -- Robert Mondavi Cabernet Sauvignon
INSERT INTO ProductSuppliers VALUES (47, 10); -- Kendall-Jackson Chardonnay
INSERT INTO ProductSuppliers VALUES (48, 10); -- Meiomi Pinot Noir
INSERT INTO ProductSuppliers VALUES (49, 10); -- Yellow Tail Merlot
INSERT INTO ProductSuppliers VALUES (50, 10); -- Smirnoff Vodka
INSERT INTO ProductSuppliers VALUES (51, 10); -- Bacardi White Rum
INSERT INTO ProductSuppliers VALUES (52, 10); -- Johnnie Walker Black Label
INSERT INTO ProductSuppliers VALUES (53, 10); -- Jose Cuervo Tequila
INSERT INTO ProductSuppliers VALUES (54, 10); -- Tanqueray Gin

-- TechGadgets Inc. supplies various electronics
INSERT INTO ProductSuppliers VALUES (57, 26); -- Anker USB Charging Cable
INSERT INTO ProductSuppliers VALUES (58, 26); -- Sony Wireless Bluetooth Earbuds

INSERT INTO ProductSuppliers VALUES (60, 28); -- T-fal Non-Stick Frying Pan
INSERT INTO ProductSuppliers VALUES (61, 28); -- Cuisinart Knife Set
INSERT INTO ProductSuppliers VALUES (62, 28); -- Pyrex Glass Food Storage Set
INSERT INTO ProductSuppliers VALUES (63, 28); -- Hamilton Beach Electric Kettle
INSERT INTO ProductSuppliers VALUES (64, 28); -- Bamboo Cutting Board

-- LittleCare Supplies supplies various baby products
INSERT INTO ProductSuppliers VALUES (69, 30); -- Johnson's Baby Shampoo
INSERT INTO ProductSuppliers VALUES (70, 30); -- Dalin's Baby Shampoo

-- PetWorld Suppliers supplies various pet products
INSERT INTO ProductSuppliers VALUES (73, 32); -- KONG Classic Dog Chew Toy
INSERT INTO ProductSuppliers VALUES (74, 32); -- Wagner`s Wild Bird Seed Mix
INSERT INTO ProductSuppliers VALUES (75, 32); -- Tetra Aquarium Filter Cartridges

-- HealthHarvest Naturals supplies various health products
INSERT INTO ProductSuppliers VALUES (78, 34); -- Centrum Multivitamin Supplements
INSERT INTO ProductSuppliers VALUES (79, 34); -- Nature Made Omega-3 Fish Oil
INSERT INTO ProductSuppliers VALUES (80, 34); -- Bob`s Red Mill Gluten-Free Rolled Oats

-- MediSafe Pharmaceuticals supplies various pharmacy products
INSERT INTO ProductSuppliers VALUES (83, 36); -- Robitussin Cough Syrup
INSERT INTO ProductSuppliers VALUES (84, 36); -- Band-Aid Adhesive Bandages
INSERT INTO ProductSuppliers VALUES (85, 36); -- Braun Digital Thermometer

-- AromaSpice Traders supplies various spices
INSERT INTO ProductSuppliers VALUES (88, 38); -- Mixed Italian Herbs
INSERT INTO ProductSuppliers VALUES (89, 38); -- Peppercorn Medley
INSERT INTO ProductSuppliers VALUES (90, 38); -- Himalayan Pink Salt

-- GlowBeauty Co. supplies various beauty products
INSERT INTO ProductSuppliers VALUES (93, 40); -- Dove Body Wash
INSERT INTO ProductSuppliers VALUES (94, 40); -- Cetaphil Gentle Skin Cleanser
INSERT INTO ProductSuppliers VALUES (95, 40); -- Coppertone Sport Sunscreen

INSERT INTO ProductSuppliers VALUES (20, 16); -- Croissants
INSERT INTO ProductSuppliers VALUES (22, 18); -- Mineral Water
INSERT INTO ProductSuppliers VALUES (23, 18); -- Energy Drink
INSERT INTO ProductSuppliers VALUES (25, 4);  -- Doritos Nacho Cheese Flavored Tortilla Chips
INSERT INTO ProductSuppliers VALUES (26, 4);  -- Lay`s Classic Potato Chips
INSERT INTO ProductSuppliers VALUES (27, 4);  -- Oreo Chocolate Sandwich Cookies
INSERT INTO ProductSuppliers VALUES (28, 4);  -- Pringles Original Potato Crisps
INSERT INTO ProductSuppliers VALUES (29, 7);  -- Kit Kat Milk Chocolate Candy Bar
INSERT INTO ProductSuppliers VALUES (30, 19); -- Coca-Cola Soda, 2 Liter

INSERT INTO ProductSuppliers VALUES (31, 23); -- Pepsi Soda, 2 Liter
INSERT INTO ProductSuppliers VALUES (32, 23); -- Red Bull Energy Drink, 8.4 fl oz
INSERT INTO ProductSuppliers VALUES (33, 19); -- Gatorade Thirst Quencher, Fruit Punch, 20 fl oz

INSERT INTO ProductSuppliers VALUES (34, 11); -- Nestle Pure Life Purified Water, 16.9 fl oz
INSERT INTO ProductSuppliers VALUES (35, 20); -- Jack Daniel`s Old No. 7 Tennessee Whiskey
INSERT INTO ProductSuppliers VALUES (36, 13); -- Tuborg Gold Lager Beer
INSERT INTO ProductSuppliers VALUES (37, 30); -- Efes Pilsener Beer
INSERT INTO ProductSuppliers VALUES (38, 31); -- Yellow Tail Shiraz
INSERT INTO ProductSuppliers VALUES (39, 40); -- Chateau Ste. Michelle Chardonnay
INSERT INTO ProductSuppliers VALUES (40, 29); -- Heineken Lager Beer
INSERT INTO ProductSuppliers VALUES (41, 41); -- Guinness Draught Stout
INSERT INTO ProductSuppliers VALUES (42, 41); -- Budweiser Lager Beer
INSERT INTO ProductSuppliers VALUES (43, 39); -- Corona Extra Lager Beer

INSERT INTO ProductSuppliers VALUES (44, 12); -- Samuel Adams Boston Lager
INSERT INTO ProductSuppliers VALUES (45, 38); -- Barefoot Cabernet Sauvignon
INSERT INTO ProductSuppliers VALUES (46, 37); -- Robert Mondavi Private Selection Cabernet Sauvignon
INSERT INTO ProductSuppliers VALUES (47, 36); -- Kendall-Jackson Vintner`s Reserve Chardonnay
INSERT INTO ProductSuppliers VALUES (48, 12); -- Meiomi Pinot Noir
INSERT INTO ProductSuppliers VALUES (49, 9); -- Yellow Tail Merlot
INSERT INTO ProductSuppliers VALUES (50, 35); -- Smirnoff No. 21 Vodka
INSERT INTO ProductSuppliers VALUES (51, 8); -- Bacardi Superior White Rum
INSERT INTO ProductSuppliers VALUES (52, 34); -- Johnnie Walker Black Label Scotch Whisky
INSERT INTO ProductSuppliers VALUES (53, 7); -- Jose Cuervo Especial Tequila
INSERT INTO ProductSuppliers VALUES (54, 33); -- Tanqueray London Dry Gin
INSERT INTO ProductSuppliers VALUES (57, 6); -- Anker USB Charging Cable
INSERT INTO ProductSuppliers VALUES (58, 2); -- Sony Wireless Bluetooth Earbuds
INSERT INTO ProductSuppliers VALUES (61, 8); -- Cuisinart 6-Piece Knife Set with Block
INSERT INTO ProductSuppliers VALUES (62, 8); -- Pyrex Glass Food Storage Set
INSERT INTO ProductSuppliers VALUES (63, 8); -- Hamilton Beach Electric Kettle
INSERT INTO ProductSuppliers VALUES (64, 8); -- Bamboo Cutting Board
INSERT INTO ProductSuppliers VALUES (67, 1); -- Huggies Natural Care Baby Wipes
INSERT INTO ProductSuppliers VALUES (68, 1); -- Fisher-Price Infant Teething Toy
INSERT INTO ProductSuppliers VALUES (69, 1); -- Johnson`s Baby Shampoo
INSERT INTO ProductSuppliers VALUES (70, 1); -- Dalin`s Baby Shampoo
INSERT INTO ProductSuppliers VALUES (73, 2); -- KONG Classic Dog Chew Toy
INSERT INTO ProductSuppliers VALUES (74, 2); -- Wagner`s Wild Bird Seed Mix
INSERT INTO ProductSuppliers VALUES (75, 4); -- Tetra Aquarium Filter Cartridges
INSERT INTO ProductSuppliers VALUES (78, 3); -- Centrum Multivitamin Supplements
INSERT INTO ProductSuppliers VALUES (79, 31); -- Nature Made Omega-3 Fish Oil Capsules
INSERT INTO ProductSuppliers VALUES (80, 31); -- Bob`s Red Mill Gluten-Free Rolled Oats
INSERT INTO ProductSuppliers VALUES (83, 31); -- Robitussin Cough Syrup
INSERT INTO ProductSuppliers VALUES (84, 32); -- Band-Aid Adhesive Bandages
INSERT INTO ProductSuppliers VALUES (85, 33); -- Braun Digital Thermometer
INSERT INTO ProductSuppliers VALUES (88, 34); -- Mixed Italian Herbs
INSERT INTO ProductSuppliers VALUES (89, 36); -- Peppercorn Medley
INSERT INTO ProductSuppliers VALUES (90, 37); -- Himalayan Pink Salt Grinder
INSERT INTO ProductSuppliers VALUES (93, 23); -- Dove Body Wash, Deep Moisture
INSERT INTO ProductSuppliers VALUES (94, 41); -- Cetaphil Gentle Skin Cleanser
INSERT INTO ProductSuppliers VALUES (95, 41); -- Coppertone Sport Sunscreen SPF 30
INSERT INTO ProductSuppliers VALUES (96, 19);
INSERT INTO ProductSuppliers VALUES (97, 19);
INSERT INTO ProductSuppliers VALUES (98, 19);
INSERT INTO ProductSuppliers VALUES (99, 19);
INSERT INTO ProductSuppliers VALUES (100, 19);
INSERT INTO ProductSuppliers VALUES (101, 19);
INSERT INTO ProductSuppliers VALUES (102, 19);
INSERT INTO ProductSuppliers VALUES (103, 19);
INSERT INTO ProductSuppliers VALUES (104, 19);
INSERT INTO ProductSuppliers VALUES (105, 19);

INSERT INTO ProductSuppliers VALUES (96, 7);
INSERT INTO ProductSuppliers VALUES (97, 1);
INSERT INTO ProductSuppliers VALUES (98, 10);
INSERT INTO ProductSuppliers VALUES (99, 15);
INSERT INTO ProductSuppliers VALUES (100, 11);
INSERT INTO ProductSuppliers VALUES (101, 14);
INSERT INTO ProductSuppliers VALUES (102, 21);
INSERT INTO ProductSuppliers VALUES (103, 8);
INSERT INTO ProductSuppliers VALUES (104, 3);
INSERT INTO ProductSuppliers VALUES (105, 31);