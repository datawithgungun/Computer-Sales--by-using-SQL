use computersales;
select * from sales;
select saleid,count(*) from sales group by saleid having count(*)>1;
select contact,count(*) from sales group by contact having count(*)>1;
select sum(salePrice) as totalSalesamount, sum(Profit) as totalProfit from sales;
select ProductType, avg(salePrice) as avgSalePrice from sales group by ProductType;
select state, count(*) as Totalsales from sales group by State;
select max(salePrice) as MaxSalePrice, min(salePrice) as MinsalePrice from sales;
select SaleYear, sum(salePrice) as TotalSalesAmount from sales group by SaleYear;
select ProductType, SaleMonth, count(*) as TotalSales from sales group by ProductType, SaleMonth;
select case
when age between 18 and 30 then '18-30'
when age between 31 and 45 then '31-45'
when age between 46 and 60 then '46-60'
else 'Above 60'
end as AgeGroup, count(*) as TotalSales from Sales group by AgeGroup;
select SaleYear, SaleMonth, count(*) as totalSales from sales group by SaleYear, SaleMonth
order by SaleYear, Month(Case Salemonth
when 'January' then '01'
when 'February' then '02'
when 'March' then '03'
when 'April' then '04'
when 'May' then '05'
when 'June' then '06'
when 'July' then '07'
when 'August' then '08'
when 'September' then '09'
when 'October' then '10'
when 'November' then '11'
when 'December' then '12'
end);
select 
gender as gender,
count(*) as Totalsales,
avg(salePrice) as avgSalePrice,
min(salePrice) as minSalePrice,
max(salePrice) as maxSalePrice
from sales group by gender;
select Contact, sum(SalePrice) as TotalSales, sum(Profit) as TotalProfit from Sales group by Contact;
select * from sales order by Profit desc limit 5;
select * from sales order by Profit limit 5;
select * from sales order by Profit desc limit 1 offset 1;
select * from sales order by Profit desc limit 1 offset 2;
