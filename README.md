
# Project Title - Car Rental Application

## Overview
Our car rental system project aims to create a user-friendly platform for customers to rent vehicles with ease. All car and customer data will be securely stored in a database for accuracy and availability. Customers will access a simple interface to browse cars, choose vehicles that match their preferences, and complete the rental process. To safeguard data privacy and security, we'll implement a robust user registration and authentication system. Efficient data management and retrieval will be ensured through a backend database for a seamless user experience.

## Installation
To set up the application locally, follow the steps detailed in the Installation Guide. This will guide you through the necessary configurations for both the backend (server-side) and frontend (client-side) components of the application.

## Technologies Used
Backend: The server-side is built using the Spring Boot framework, offering a robust and scalable foundation.

Frontend: The user interface is crafted with Angular, providing a dynamic and responsive experience for users.

Database: We utilize a relational database to store and manage product information, user data, and booking details.


## Installation Steps

### Spring Boot

#### 1. Install Java Development Kit (JDK)

Ensure that you have Java Development Kit (JDK) installed. You can download it from the official website: [Oracle JDK](https://www.oracle.com/java/technologies/javase-downloads.html) or [OpenJDK](https://adoptopenjdk.net/).

#### 2. Install an Integrated Development Environment (IDE)

Download and install an IDE of your choice. Popular choices for Spring Boot development include:

- [IntelliJ IDEA](https://www.jetbrains.com/idea/)
- [Eclipse](https://www.eclipse.org/)

#### 3. Set up Spring Boot Project

Create a new Spring Boot project or clone your existing project. You can use [Spring Initializr](https://start.spring.io/) to generate a project with the required dependencies.

#### 4. Build and Run

Build and run your Spring Boot application using the following commands:

```bash
./mvnw clean install
./mvnw spring-boot:run
```

Your Spring Boot application should be accessible at `http://localhost:8080`.

### Angular

#### 1. Install Node.js and npm

Ensure that you have Node.js and npm installed. You can download them from the official website: [Node.js](https://nodejs.org/).

#### 2. Install Angular CLI

Install the Angular CLI globally using the following command:

```bash
npm install -g @angular/cli
```

#### 3. Set up Angular Project

Create a new Angular project or clone your existing project using the Angular CLI:

```bash
ng new my-angular-app
cd my-angular-app
```

#### 4. Build and Run

Build and run your Angular application using the following commands:

```bash
ng serve
```

Your Angular application should be accessible at `http://localhost:4200`.

## MYSQL Database
Use the scripts present in SQL folder to create the tables in the database. Also, configure the MYSQL connection in the application properties in backend folder as per your database requirements.

## Additional Configuration

Include any additional configuration steps or details that are specific to your project. This may include database setup, environment configurations, or any other relevant information.

# Contribution
Venkata Sai Krishna Gude
Revanth Koganti
Phanindra Kakumanu
Dinesh Sai Bodala
Jagadish Kumar Hiremath
