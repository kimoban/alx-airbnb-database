# Index Performance Report

## Before Indexing
- Queries involving JOINs and filters on user_id, email, or property_id were slower (~500ms).

## After Indexing
- Execution time reduced significantly (~50-100ms).
- Indexes improved JOIN speed and WHERE clause filtering.

## Indexes Added
- user.email
- booking.user_id
- booking.property_id
- property.location
- booking.start_date