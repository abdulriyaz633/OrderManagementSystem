# OrderManagementSystem
An Order Management System with Rest API’s where API clients will be able
to add orders, edit orders, delete orders and view orders.
- An order contains buyer information, order status, shipping address. An order can have
many order items. Each order item has a quantity and is associated with a product. A
product has properties name, weight, height, image, Stock Keeping Unit (SKU), barcode
and available quantity.
- Develop Web API’s where API clients can add orders update orders, delete orders, view
orders.
- Order can have statuses: Placed, Approved, Cancelled, In Delivery, Completed
- There are two user roles: Administrator and Buyer. Buyer should be able to see only
their orders, Administrator should be able to see all orders in the system
- Once order has been placed, buyer should receive an email.
- Technical Requirements:
- Use ASP.NET MVC Web API
- Use ASP.NET MVC 4.5
- Use SQL Server Express Edition
- Use Microsoft Visual Studio Community Edition
- Use Postman for testing the developed API’s
- Use RestFul Standard
- Use Stored procedure where necessary to perform joins
- Use Nuget package manager for dependencies
- There is no need of any user interface. Everything need to be tested from a Rest
Client like Postman
