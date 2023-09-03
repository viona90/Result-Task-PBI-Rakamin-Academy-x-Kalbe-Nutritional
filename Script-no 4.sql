SELECT Item_code, Item_name, Item_price, Item_total
FROM kalbe.inventory;

--- Show Item_name that has the highest number in Item_total. 
SELECT item_name
FROM inventory i 
WHERE Item_total = (SELECT max(Item_total) FROM inventory i)


--- DELETE the Item_name that has the lowest number of Item_total
-- Find item_name with the lowest number of item_total
SELECT Item_name, min(item_total) AS jumlah_item
FROM inventory 
GROUP BY 1
ORDER BY jumlah_item 
LIMIT 1
-- Delete this item_name
DELETE FROM inventory 
WHERE item_name = 'Hydro Coco 250ML'



