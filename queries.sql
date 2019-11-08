-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select p.ProductName, c.CategoryName
from Product as p
join Category as c on c.Id = p.CategoryID;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select o.Id as OrderID, s.CompanyName as Shipper 
from [Order] as o
join Shipper as s on s.Id = o.ShipVia
where o.OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select Product.ProductName
from OrderDetail
join Product on Product.Id = OrderDetail.ProductId
where OrderDetail.OrderId = 10251;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select o.Id as OrderID, c.CompanyName, e.LastName
from [Order] as o
join Customer as c on c.Id = o.CustomerId
join Employee as e on e.Id = o.EmployeeId;