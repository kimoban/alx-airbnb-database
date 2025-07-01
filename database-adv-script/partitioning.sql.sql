-- Create partitioned booking table
CREATE TABLE bookings_partitioned (
    id SERIAL,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    -- other columns
    PRIMARY KEY (id, start_date)
) PARTITION BY RANGE (start_date);

-- Create partitions by year
CREATE TABLE bookings_y2023 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_y2024 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- (Add more partitions as needed)