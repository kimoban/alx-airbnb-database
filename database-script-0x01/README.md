# Database Schema Documentation

## Overview
This directory contains the SQL scripts for creating the Airbnb-like database schema.

## Files
- `schema.sql`: Main SQL script for creating all tables, constraints, and indexes

## Tables Created
1. `users`: Stores user information
2. `properties`: Stores property listings
3. `bookings`: Records property bookings
4. `payments`: Tracks payment transactions
5. `reviews`: Stores property reviews
6. `messages`: Stores user-to-user messages

## Usage
1. Execute the `schema.sql` script in your PostgreSQL database
2. The script will:
   - Create the necessary tables with all constraints
   - Set up appropriate indexes for performance
   - Define all relationships between tables

## Requirements
- PostgreSQL 12 or higher
- `uuid-ossp` extension enabled