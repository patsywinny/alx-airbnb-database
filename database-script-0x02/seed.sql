
-- USERS

INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
  ('uuid-001', 'Alice', 'Mwangi', 'alice@example.com', 'hashedpwd1', '0712345678', 'guest', CURRENT_TIMESTAMP),
  ('uuid-002', 'Brian', 'Ouma', 'brian@example.com', 'hashedpwd2', '0723456789', 'host', CURRENT_TIMESTAMP),
  ('uuid-003', 'Catherine', 'Njoroge', 'cathy@example.com', 'hashedpwd3', '0734567890', 'guest', CURRENT_TIMESTAMP),
  ('uuid-004', 'Daniel', 'Kariuki', 'daniel@example.com', 'hashedpwd4', NULL, 'admin', CURRENT_TIMESTAMP);

-- PROPERTIES

INSERT INTO Properties (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
  ('prop-001', 'uuid-002', 'Ocean View Apartment', 'A cozy apartment with a sea view in Mombasa.', 'Mombasa', 7500.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('prop-002', 'uuid-002', 'Nairobi Studio', 'A modern studio apartment in Westlands.', 'Nairobi', 4500.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


-- BOOKINGS

INSERT INTO Bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
  ('book-001', 'prop-001', 'uuid-001', '2025-06-01', '2025-06-05', 30000.00, 'confirmed', CURRENT_TIMESTAMP),
  ('book-002', 'prop-002', 'uuid-003', '2025-06-10', '2025-06-12', 9000.00, 'pending', CURRENT_TIMESTAMP);


-- PAYMENTS

INSERT INTO Payments (payment_id, booking_id, amount, payment_date, payment_method) VALUES
  ('pay-001', 'book-001', 30000.00, CURRENT_TIMESTAMP, 'paypal'),
  ('pay-002', 'book-002', 9000.00, CURRENT_TIMESTAMP, 'credit_card');


-- REVIEWS

INSERT INTO Reviews (review_id, property_id, user_id, rating, comment, created_at) VALUES
  ('rev-001', 'prop-001', 'uuid-001', 5, 'Amazing place! Beautiful view and very clean.', CURRENT_TIMESTAMP),
  ('rev-002', 'prop-002', 'uuid-003', 4, 'Great location and friendly host.', CURRENT_TIMESTAMP);


-- MESSAGES

INSERT INTO Messages (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
  ('msg-001', 'uuid-001', 'uuid-002', 'Hi, is the apartment available from June 1st?', CURRENT_TIMESTAMP),
  ('msg-002', 'uuid-002', 'uuid-001', 'Yes, it is. Feel free to book!', CURRENT_TIMESTAMP),
  ('msg-003', 'uuid-003', 'uuid-002', 'Can I check in early?', CURRENT_TIMESTAMP);
