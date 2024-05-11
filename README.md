# **E-Challan - Traffic Incident Management System** 🚗🚓

![Header](/assets/Header.png)

This Traffic Incident Management System is designed to effectively manage information related to traffic incidents, vehicles, owners, traffic tickets, traffic officers, payments, ticket histories, and violations. It provides a comprehensive solution for tracking traffic incidents from occurrence to resolution. 🛣️🚨

## **Table of Contents** 📋

- [**Database Schema**](#database-schema) 🗄️
- [**Schema Diagram**](#schema-diagram) ❇️
- [**Tables**](#tables) 📄
- [**Functionalities**](#functionalities) ⚙️
- [**Setup**](#setup) 🛠️
- [**Contributing**](#contributing) 🤝
- [**License**](#license) 📝

## **Database Schema** 🗄️

The database schema includes tables to store information about vehicles, owners, traffic incidents, traffic tickets, traffic officers, payments, ticket histories, and violations. Relationships are established between entities to maintain data integrity. 🛡️

## **Schema Diagram** ❇️
![Schema Diagram](/assets/schema.svg)

## **Tables** 📄

1. `Vehicles`: Stores vehicle information including vehicle ID, owner ID, plate number, make, model, year, and color.

2. `Owners`: Contains owner details such as owner ID, first name, last name, license number, license type, license expiry date, address, city, state, country, and phone number.

3. `TrafficIncidents`: Stores information about traffic incidents including incident ID, incident date and time, location, description, vehicle ID, and owner ID.

4. `TrafficTickets`: Contains details about traffic tickets including ticket ID, incident ID, violation ID, description, fine, issuing officer ID, issue date and time, and payment status.

5. `TrafficOfficers`: Stores information about traffic officers including officer ID, first name, last name, badge number, rank, phone number, and email.

6. `Payments`: Contains information about payments for traffic tickets including payment ID, ticket ID, payment date and time, amount, and payment method.

7. `TicketHistories`: Stores the history of changes to traffic tickets including history ID, ticket ID, modification date and time, modified by, modification type, old value, and new value.

8. `Violations`: Contains information about traffic violations including violation ID, name, and description.

## **Functionalities** ⚙️

- `Traffic incident tracking`: Efficiently track traffic incidents including vehicles involved, owners, and incident details.
- `Traffic ticket management`: Manage traffic tickets issued including violation details, fines, issuing officers, and payment status.
- `Owner and vehicle management`: Maintain detailed information about vehicle owners and their vehicles for effective incident management.
- `Traffic officer management`: Track information about traffic officers including their contact details and rank.
- `Payment tracking`: Monitor payments made for traffic tickets including payment amounts, methods, and dates.
- `Violation management`: Maintain a record of traffic violations including their names and descriptions.

## **Setup** 🛠️

1. Clone the repository to your local machine.
2. Set up your preferred database management system (DBMS) and execute the SQL scripts to create the database schema.
3. Configure the application settings to connect to your database.
4. Start the application and begin managing traffic incidents, vehicles, owners, traffic tickets, traffic officers, payments, ticket histories, and violations efficiently.

## **Contributing** 🤝

Contributions are welcome! If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

## **License** 📝

This project is licensed under the [MIT License](LICENSE).
