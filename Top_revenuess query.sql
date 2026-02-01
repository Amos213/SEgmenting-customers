SELECT 
    CustomerID,InvoiceNo,Description,UnitPrice,
    ROUND(quantity * UnitPrice, 2) AS total,
  case when Quantity * UnitPrice >=100 then "high earners"
  when Quantity * UnitPrice >=50 then "average earners"
  else "low income" end as outcome
FROM data;