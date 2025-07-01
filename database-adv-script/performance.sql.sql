-- Initial query (before optimization)
SELECT 
    b.*,
    u.name as user_name,
    u.email as user_email,
    p.title as property_title,
    p.price as property_price,
    pay.amount as payment_amount,
    pay.payment_method
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id;

-- Optimized query
SELECT 
    b.*,
    u.name as user_name,
    u.email as user_email,
    p.title as property_title,
    p.price as property_price,
    pay.amount as payment_amount,
    pay.payment_method
FROM bookings b
JOIN (SELECT id, name, email FROM users) u ON b.user_id = u.id
JOIN (SELECT id, title, price FROM properties) p ON b.property_id = p.id
LEFT JOIN (SELECT booking_id, amount, payment_method FROM payments) pay ON b.id = pay.booking_id;