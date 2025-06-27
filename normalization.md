# Database Normalization Process for Airbnb Database

## Initial Assessment
The initial database design was analyzed for normalization compliance. The following potential issues were identified:

1. **User Table**: Contains all user information in one table, which is appropriate for 3NF as there are no repeating groups or partial dependencies.
2. **Property Table**: Contains property details with a foreign key to User, properly normalized.
3. **Booking Table**: Contains booking information with foreign keys to User and Property, properly normalized.
4. **Payment Table**: Contains payment information with a foreign key to Booking, properly normalized.
5. **Review Table**: Contains review information with foreign keys to User and Property, properly normalized.
6. **Message Table**: Contains message information with foreign keys to sender and recipient Users, properly normalized.

## Normalization Steps

### First Normal Form (1NF)
- All tables have atomic values in each column
- No repeating groups found
- Each table has a primary key

### Second Normal Form (2NF)
- All tables are in 1NF
- All non-key attributes are fully functionally dependent on the primary key
- No partial dependencies found

### Third Normal Form (3NF)
- All tables are in 2NF
- No transitive dependencies found
- All attributes depend only on the primary key

## Additional Considerations
- The ENUM types for roles, statuses, and payment methods help maintain data integrity
- Foreign key constraints properly enforce relationships
- Timestamp fields help track record creation and updates

## Conclusion
The database design is already in Third Normal Form (3NF) as it:
1. Eliminates repeating groups (1NF)
2. Eliminates partial dependencies (2NF)
3. Eliminates transitive dependencies (3NF)

No further normalization steps were required as the initial design already met 3NF requirements.