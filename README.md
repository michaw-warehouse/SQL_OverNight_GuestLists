# Overnight Guestlists Database System

## Project Overview

The Overnight Guestlists Database System is a relational SQL Server database designed to manage and track overnight visitors within residential areas.

The system follows a hierarchical location structure:

State & Division → Township → Ward → Street → House → Guest List → Visitor

This project demonstrates:

> Relational database design

> Primary & Foreign key relationships

> Data normalization

> Complex JOIN operations

> Aggregation and reporting queries

> Business-style reporting logic

It was developed using Microsoft SQL Server (T-SQL).

## Database Structure

Core Tables

Table Name	Description

> O1_State_and_Division	--> Stores state and division information

> O2_Township	--> Township data linked to state/division

> O3_Ward -->	Ward information linked to township

> O4_Street -->	Street information linked to ward

> O5_House -->	House details and owner information

> O6_Overnightguest_lists	--> Overnight guest application records

> O7_Visiter --> Visitor personal and stay information

## Entity Relationship Design

The database follows a fully normalized relational structure:

> One State has many Townships

> One Township has many Wards

> One Ward has many Streets

> One Street has many Houses

> One House can have multiple Guest Lists

> One Guest List can include multiple Visitors

![Dashboard Screenshot](https://github.com/michaw-warehouse/SQL_OverNight_GuestLists/blob/087b63515195a0ec45536449f354dad978a85bd8/SQL_OverNight_GuestList_Database/ER_Diagram.png)

## Key Features & Query Capabilities

### 1️)  Full Address Reporting

Retrieve complete visitor and address hierarchy using multi-table JOINs.


### 2️)  Stay Duration Calculation

Calculate number of days stayed using:

> DATEDIFF(DAY, Startdate, Enddate)


### 3️)  Visitor Analytics

Total visitors by township

Visitor count by gender

Top 5 houses with highest visitor count


### 4️)  Real-Time Filtering

Query currently staying visitors using:
> GETDATE() BETWEEN Startdate AND Enddate

### Technologies Used

> Microsoft SQL Server

> T-SQL

> Relational Database Design

> Primary & Foreign Keys

> Aggregate Functions

> Group By & Filtering

> Join Operations
