/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
Select Products.Name, Categories.Name 
From products
Inner Join categories on Products.CategoryID = Categories.CategoryID
where Products.CategoryID AND Categories.CategoryID = 1;

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
Select Products.Name, Products.Price, Reviews.Rating
From products
Inner Join Reviews on Products.ProductID = Reviews.ProductID
where Reviews.Rating = 5;

/* joins: find the employee with the most total quantity sold.  use the sum() function and group by Quantity*/
Select e.FirstName, e.LastName, sum(s.Quantity) AS TotalSold
From Sales as s
Inner Join employees AS E on e.employeeID = s.employeeID
Group BY e.employeeID
Order BY TotalSold DESC
Limit 2;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
Select departments.Name, categories.Name
From departments
Inner Join categories on Departments.DepartmentID = categories.DepartmentID
Where (categories.CategoryID = 8 OR categories.CategoryID = 2);

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
Select products.Name, Sum(sales.Quantity) AS TotalSold, SUM(sales.Quantity * products.Price) AS GrossEarnings
From products
Inner Join Sales on products.productID = sales.productID
Where products.Name = 'Eagles: Hotel California';

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
Select products.Name, reviews.Reviewer, reviews.Rating, reviews.Comment
From reviews
Inner Join Products on products.productID = reviews.productID
Where (products.Name = 'Visio TV' AND reviews.Rating = 1);

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */

Select e.employeeID, e.FirstName, e.LastName, s.Quantity, p.Name
From Employees as e
Inner Join Sales as s on e.EmployeeID = s.EmployeeID
Inner Join Products as p on s.ProductID = p.ProductID;






