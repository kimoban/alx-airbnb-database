-- Sample data for Airbnb-like database

-- Insert sample users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('11111111-1111-1111-1111-111111111111', 'John', 'Doe', 'john.doe@example.com', '$2a$10$randomhash1', '+1234567890', 'guest', '2023-01-01 10:00:00'),
('22222222-2222-2222-2222-222222222222', 'Jane', 'Smith', 'jane.smith@example.com', '$2a$10$randomhash2', '+1987654321', 'host', '2023-01-02 11:00:00'),
('33333333-3333-3333-3333-333333333333', 'Bob', 'Johnson', 'bob.johnson@example.com', '$2a$10$randomhash3', '+1122334455', 'host', '2023-01-03 12:00:00'),
('44444444-4444-4444-4444-444444444444', 'Alice', 'Williams', 'alice.williams@example.com', '$2a$10$randomhash4', '+1555666777', 'guest', '2023-01-04 13:00:00'),
('55555555-5555-5555-5555-555555555555', 'Admin', 'User', 'admin@example.com', '$2a$10$randomhash5', '+1888999000', 'admin', '2023-01-05 14:00:00');

-- Insert sample properties
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Cozy Apartment', 'A cozy apartment in the city center', 'New York, NY', 120.00, '2023-01-10 09:00:00', '2023-01-10 09:00:00'),
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', 'Beach House', 'Beautiful house near the beach', 'Miami, FL', 250.00, '2023-01-11 10:00:00', '2023-01-11 10:00:00'),
('cccccccc-cccc-cccc-cccc-cccccccccccc', '33333333-3333-3333-3333-333333333333', 'Mountain Cabin', 'Rustic cabin with mountain views', 'Denver, CO', 180.00, '2023-01-12 11:00:00', '2023-01-12 11:00:00'),
('dddddddd-dddd-dddd-dddd-dddddddddddd', '33333333-3333-3333-3333-333333333333', 'Downtown Loft', 'Modern loft in downtown area', 'Chicago, IL', 200.00, '2023-01-13 12:00:00', '2023-01-13 12:00:00');

-- Insert sample bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2023-02-01', '2023-02-05', 480.00, 'confirmed', '2023-01-15 13:00:00'),
('ffffffff-ffff-ffff-ffff-ffffffffffff', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '44444444-4444-4444-4444-444444444444', '2023-02-10', '2023-02-15', 1250.00, 'confirmed', '2023-01-16 14:00:00'),
('gggggggg-gggg-gggg-gggg-gggggggggggg', 'cccccccc-cccc-cccc-cccc-cccccccccccc', '11111111-1111-1111-1111-111111111111', '2023-03-01', '2023-03-04', 540.00, 'pending', '2023-01-17 15:00:00'),
('hhhhhhhh-hhhh-hhhh-hhhh-hhhhhhhhhhhh', 'dddddddd-dddd-dddd-dddd-dddddddddddd', '44444444-4444-4444-4444-444444444444', '2023-03-10', '2023-03-15', 1000.00, 'canceled', '2023-01-18 16:00:00');

-- Insert sample payments
INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('iiiiiiii-iiii-iiii-iiii-iiiiiiiiiiii', 'eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 480.00, '2023-01-15 13:30:00', 'credit_card'),
('jjjjjjjj-jjjj-jjjj-jjjj-jjjjjjjjjjjj', 'ffffffff-ffff-ffff-ffff-ffffffffffff', 1250.00, '2023-01-16 14:30:00', 'paypal'),
('kkkkkkkk-kkkk-kkkk-kkkk-kkkkkkkkkkkk', 'gggggggg-gggg-gggg-gggg-gggggggggggg', 540.00, '2023-01-17 15:30:00', 'stripe');

-- Insert sample reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment, created_at) VALUES
('llllllll-llll-llll-llll-llllllllllll', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 5, 'Great apartment, perfect location!', '2023-02-06 10:00:00'),
('mmmmmmmm-mmmm-mmmm-mmmm-mmmmmmmmmmmm', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '44444444-4444-4444-4444-444444444444', 4, 'Lovely house, but the wifi was slow', '2023-02-16 11:00:00'),
('nnnnnnnn-nnnn-nnnn-nnnn-nnnnnnnnnnnn', 'cccccccc-cccc-cccc-cccc-cccccccccccc', '11111111-1111-1111-1111-111111111111', 3, 'Nice views but the cabin was cold', '2023-03-05 12:00:00');

-- Insert sample messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('oooooooo-oooo-oooo-oooo-oooooooooooo', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi, is the apartment available for early check-in?', '2023-01-14 09:00:00'),
('pppppppp-pppp-pppp-pppp-pppppppppppp', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Yes, we can arrange for 1pm check-in', '2023-01-14 10:30:00'),
('qqqqqqqq-qqqq-qqqq-qqqq-qqqqqqqqqqqq', '44444444-4444-4444-4444-444444444444', '33333333-3333-3333-3333-333333333333', 'Do you allow pets in the mountain cabin?', '2023-01-19 14:00:00'),
('rrrrrrrr-rrrr-rrrr-rrrr-rrrrrrrrrrrr', '33333333-3333-3333-3333-333333333333', '44444444-4444-4444-4444-444444444444', 'Yes, we allow small pets with an additional fee', '2023-01-19 15:15:00');
