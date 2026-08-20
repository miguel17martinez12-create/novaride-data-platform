select
    t.trip_id,
    t.customer_id,
    c.country_code,
    c.city as customer_city,

    t.driver_id,
    t.vehicle_id,

    t.city as trip_city,
    t.trip_status,
    t.currency,

    t.requested_at,
    t.accepted_at,
    t.pickup_at,
    t.completed_at,

    t.distance_km,
    t.duration_minutes,

    t.base_fare,
    t.surge_multiplier,
    t.discount_amount,
    t.tax_amount,
    t.total_amount,

    p.payment_id,
    p.payment_method,
    p.payment_status,
    p.processor_fee,
    p.paid_at,

    t.created_at,
    t.updated_at

from novaride.silver.trips t

left join novaride.silver.payments p
    on t.trip_id = p.trip_id

left join novaride.silver.customers c
    on t.customer_id = c.customer_id
