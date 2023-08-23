# BioCharm E-Commerce Website 🌿🌸

BioCharm is an e-commerce website that provides customers with the ability to browse through a selection of cosmetic products, add products to their cart, view different product categories, and create an account to place orders by filling out the required fields. The website also offers an admin interface that allows administrators to have both a client experience and an admin experience. Admins can manage product categories, edit, add, or remove products, and access sales analytics for past months.

This project was developed using Spring Boot, following the MVC (Model-View-Controller) architecture. It incorporates Spring Security for user authentication and authorization, and it utilizes MariaDB as the database management system.

## Features ✨

- Browse and search for preferred cosmetic products.
- Add products to the shopping cart.
- Explore various product categories.
- Create an account and place orders.
- Admin panel for managing product categories and products.
- View sales analytics for past months.

## Technologies Used 🛠️

- Spring Boot
- MVC Architecture
- Spring Security
- MariaDB

## Video Demonstration 📹

[Watch the Video Demonstration](https://drive.google.com/file/d/1ZtGQ4dm-ALzysJUNfacFNPoWWWMfMc5g/view?usp=drive_link)

## Getting Started 🚀

To run this project locally, you'll need to have Java and MariaDB installed. Clone this repository and configure the database connection in the application properties.

```properties
# src/main/resources/application.properties

spring.datasource.url=jdbc:mysql://localhost:3306/biocharm
spring.datasource.username=root
spring.datasource.password=
