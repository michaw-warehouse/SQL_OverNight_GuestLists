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

O1_State_and_Division	--> Stores state and division information

O2_Township	--> Township data linked to state/division

O3_Ward -->	Ward information linked to township

O4_Street -->	Street information linked to ward

O5_House -->	House details and owner information

O6_Overnightguest_lists	--> Overnight guest application records

O7_Visiter --> Visitor personal and stay information

## Entity Relationship Design

The database follows a fully normalized relational structure:

> One State has many Townships

> One Township has many Wards

> One Ward has many Streets

> One Street has many Houses

> One House can have multiple Guest Lists

> One Guest List can include multiple Visitors

![Dashboard Screenshot](SQL_OverNight_GuestList_Database/https://github.com/michaw-warehouse/SQL_OverNight_GuestLists/blob/7abe21cc9a19134c3ebc0f3e1ec302838b1a6e3a/SQL_OverNight_GuestList_Database/Screenshot%202026-03-02%20141230.png)
