select
    trip_id,
    customer_id,
    driver_id,
    vehicle_id,
    city,
    trip_status,
    currency,

    requested_at,
    accepted_at,
    pickup_at,
    completed_at,

    distance_km,
    duration_minutes,
    base_fare,
    surge_multiplier,
    discount_amount,
    tax_amount,
    total_amount,

    created_at,
    updated_at

from novaride.silver.trips
