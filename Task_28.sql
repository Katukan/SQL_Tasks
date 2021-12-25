/***************************************************************************    
    Используя таблицу Product, 
    определить количество производителей, выпускающих по одной модели.

***************************************************************************/

SELECT COUNT(maker) AS qty
FROM (SELECT maker AS maker, COUNT(model) AS count_model 
      FROM Product GROUP BY maker) AS [new_product]
WHERE count_model = 1
