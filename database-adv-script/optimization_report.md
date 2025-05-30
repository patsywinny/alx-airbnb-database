-- Optimized version
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    
    u.first_name,
    u.last_name,
    u.email,
    
    p.name AS property_name,
    p.location,
    
    pay.amount,
    pay.payment_method

FROM 
    Booking b
INNER JOIN 
    User u ON b.user_id = u.user_id
INNER JOIN 
    Property p ON b.property_id = p.property_id
LEFT JOIN 
    Payment pay ON b.booking_id = pay.booking_id
ORDER BY 
    b.created_at DESC;
