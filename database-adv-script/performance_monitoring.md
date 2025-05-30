EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    b.start_date,
    b.end_date
FROM 
    Booking b
JOIN 
    User u ON b.user_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
WHERE 
    b.start_date BETWEEN '2024-01-01' AND '2024-12-31';







Identify Bottlenecks

Possible output observations:
Seq Scan: Indicates a full table scan — slow for large data.

Missing indexes: On start_date, user_id, or property_id.

Join inefficiencies: No index on join keys = nested loop join.





CREATE INDEX idx_booking_start_date ON Booking(start_date);
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
