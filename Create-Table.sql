/* 
Instructions from Khan Academy: Create your own store, where sell one type of things, like clothing or bikes, whatever you want your store to specialize in. 
You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. 
You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items.
*/


CREATE TABLE rsd_items (id INTEGER PRIMARY KEY, name TEXT, price REAL, quantity INTEGER, color TEXT);
INSERT INTO rsd_items VALUES (1, "Long Sleeve Shirt", 35.00, 10, "Camo");
INSERT INTO rsd_items VALUES (2, "Short Sleeve Shirt", 25.00, 15, "Camo");
INSERT INTO rsd_items VALUES (3, "Hat", 21.00, 16, "Camo");
INSERT INTO rsd_items VALUES (4, "Custom Disk", 19.95, 2, "Blue");
INSERT INTO rsd_items VALUES (5, "Custom Disk", 19.95, 1, "Yellow");
INSERT INTO rsd_items VALUES (6, "Custom Disk", 19.95, 1, "Neon Yellow");
INSERT INTO rsd_items VALUES (7, "Custom Disk", 19.95, 5, "Pink");
INSERT INTO rsd_items VALUES (8, "Custom Disk", 19.95, 2, "Orange");
INSERT INTO rsd_items VALUES (9, "Custom Disk", 19.95, 1, "White");
INSERT INTO rsd_items VALUES (10, "Custom Disk", 19.95, 3, "Green");
INSERT INTO rsd_items VALUES (11, "Custom Disk", 19.95, 2, "Neon Green");
INSERT INTO rsd_items VALUES (12, "Hoodie", 40.00, 5, "Camo");
INSERT INTO rsd_items VALUES (13, "Coozie", 5.00, 20, "Orange");
INSERT INTO rsd_items VALUES (14, "Travel Cup", 21.99, 5, "Grey");
INSERT INTO rsd_items VALUES (15, "Custom Disk", 19.95, 2, "Grey");

SELECT AVG(price) FROM rsd_items;
SELECT color, AVG(price) FROM rsd_items GROUP BY color;
SELECT DISTINCT name FROM rsd_items ORDER BY -price;
SELECT DISTINCT color FROM rsd_items ORDER BY price;
SELECT name, sum(quantity) FROM rsd_items GROUP BY name; 
