-- Вывести клиентов не из Germany, имена которых начинаются на букву A
SELECT 
    CustomerName
FROM
    Customers
WHERE
    CustomerName LIKE 'A%'
        AND Country <> 'Germany';
        
-- Вывести данные о заказах клиентов 1, 2, 5 (проекция: номерзаказа, названиекомпании_перевозчика)
SELECT 
    t1.OrderID AS order_number,
    t3.ShipperName AS shipper_company_name
FROM
    Orders t1
        INNER JOIN
    Customers t2 ON t1.CustomerID = t2.CustomerID
        INNER JOIN
    Shippers t3 ON t1.ShipperID = t3.ShipperID
WHERE
    t2.CustomerID IN (1 , 2, 5)
GROUP BY t2.CustomerID;

-- Вывести данные о заказах клиентов не из France (проекция: номерзаказа, имяклиента, фамилия_менеджера)
SELECT 
    t1.OrderID AS order_number,
    t2.CustomerName AS customer_name,
    t3.LastName AS manager_name
FROM
    Orders t1
        INNER JOIN
    Customers t2 ON t1.CustomerID = t2.CustomerID
        INNER JOIN
    Employees t3 ON t1.EmployeeID = t3.EmployeeID
WHERE
    t2.Country <> 'France';

 -- Вывести ср/стоимость товаров от поставщика 4
 SELECT 
    AVG(price) AS average_price
FROM
    Products
WHERE
    SupplierID = 4;
    
    -- Вывести один самый дешевый товар от поставщика 1
    
    SELECT 
    ProductName,
    Price AS cheapest_price
FROM 
    Products
WHERE 
    SupplierID = 1 
    AND Price = (
        SELECT 
            MIN(Price)
        FROM 
            Products
        WHERE 
            SupplierID = 1
    );
    -- Зачем нужна проекция в БД. Дайте короткий ответ
    /*
Проекция помогает оптимизировать запросы и выбрать только те данные из таблицы, которые нам требуются, тем самым уменьшая время выполнения запроса и нагрузку на систему.
*/
    
    




