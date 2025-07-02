-- 1. Total bookings per user
SELECT user_id, COUNT(*) as total_bookings
FROM bookings
GROUP BY user_id;

-- 2. Rank properties by number of bookings
SELECT 
    p.id,
    p.name,
    COUNT(b.id) as booking_count,
    RANK() OVER (ORDER BY COUNT(b.id) DESC) as booking_rank
    ["ROW_NUMBER()"]
FROM properties p
LEFT JOIN bookings b ON p.id = b.property_id
GROUP BY p.id, p.name;
