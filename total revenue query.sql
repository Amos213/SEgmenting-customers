-- SELECT * FROM sdata.data;
SELECT 
    InvoiceNo,StockCode,Description,InvoiceDate,UnitPrice,CustomerID,Quantity,Country,
    ROUND(quantity * UnitPrice, 2) AS total_revenue
FROM data
order by total_revenue desc
limit 5;
