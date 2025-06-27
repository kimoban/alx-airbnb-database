# Sample Data Documentation

## Overview
This directory contains SQL scripts for populating the Airbnb-like database with sample data.

## Files
- `seed.sql`: SQL script containing INSERT statements for sample data

## Data Included
1. **Users**: 5 sample users (2 guests, 2 hosts, 1 admin)
2. **Properties**: 4 sample properties (2 per host)
3. **Bookings**: 4 sample bookings (with different statuses)
4. **Payments**: 3 sample payments (one for each booking except canceled)
5. **Reviews**: 3 sample reviews (for 3 properties)
6. **Messages**: 4 sample messages (conversations between users)

## Usage
1. Ensure the database schema has been created using the scripts in `database-script-0x01`
2. Execute the `seed.sql` script in your PostgreSQL database
3. The script will populate all tables with realistic sample data

## Data Characteristics
- UUIDs are used for all primary keys
- Realistic names, emails, and locations are used
- Booking dates are in the future relative to creation dates
- Reviews reference actual bookings
- Messages show realistic conversations