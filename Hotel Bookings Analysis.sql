# Hotel Booking Analysis


-- 1. What is the average lead time for hotel bookings?
SELECT
    hotel,
    ROUND(AVG(lead_time), 0) AS avg_lead
FROM
    hotel_bookings
WHERE
    lead_time != 0
GROUP BY 1;



-- 2. Which market segment are the majority of bookings coming from?
SELECT
    market_segment,
    COUNT(*) AS total_bookings
FROM
    hotel_bookings
GROUP BY 1
ORDER BY 2 DESC;



-- 3. What are the most common distribution channels used for bookings?
SELECT
    distribution_channel,
    COUNT(*) AS total_bookings
FROM
    hotel_bookings
GROUP BY 1
ORDER BY 2 DESC;



-- 4. What are the monthly trends in bookings and cancellations for each hotel?
SELECT
    hotel,
    YEAR(reservation_status_date) AS year,
    MONTH(reservation_status_date) AS month,
    SUM(IF(is_canceled = 0, 1, 0)) AS total_booked,
    SUM(IF(is_canceled = 1, 1, 0)) AS total_canceled,
    ROUND((SUM(IF(is_canceled = 1, 1, 0)) / COUNT(*)) * 100, 0) AS percentage_canceled
FROM
    hotel_bookings
GROUP BY 1, 2, 3
ORDER BY 1 ASC, 2 ASC, 3 ASC;



-- 5. What are the top 10 countries with the most bookings?
SELECT
    country,
    total_bookings
FROM
    (SELECT
        country,
        COUNT(*) AS total_bookings,
        DENSE_RANK() OVER (ORDER BY COUNT(*) DESC) AS rnk
    FROM
        hotel_bookings
    WHERE
        is_canceled = 0
    GROUP BY 1) h
WHERE
    rnk <= 10;



-- 6. What is the average number of adults, children, and babies per hotel?
SELECT
    hotel,
    ROUND(AVG(adults), 0) AS avg_adult_amt,
    ROUND(AVG(children), 0) AS avg_children_amt,
    ROUND(AVG(babies), 0) AS avg_babies_amt
FROM
    hotel_bookings
WHERE
    adults != 0
AND children != 0
AND babies != 0
GROUP BY 1;



-- 7. How long do guests stay at hotels on average?
SELECT
    hotel,
    ROUND(AVG(total_nights), 0) AS avg_nights
FROM
    (SELECT
        hotel,
        stays_in_week_nights + stays_in_weekend_nights AS total_nights
    FROM
        hotel_bookings
    WHERE
        reservation_status NOT IN ('Canceled', 'No-Show')) t
WHERE
    total_nights != 0
GROUP BY 1;



-- 8. What is the total number of bookings for each length of stay for each hotel type?
SELECT
    hotel,
    length_of_stay,
    COUNT(*) AS total_bookings
FROM
    (SELECT
        hotel,
        stays_in_week_nights + stays_in_weekend_nights AS length_of_stay
    FROM
        hotel_bookings
    WHERE
        is_canceled = 0) t
WHERE
    length_of_stay >= 1
GROUP BY 1, 2
ORDER BY 1 ASC, 2 ASC;



-- 9. What is the correlation between the monthly average ADR and the amount of bookings between hotels? In other words, how does ADR impact booking demand?
SELECT
    hotel,
    YEAR(reservation_status_date) AS year,
    MONTH(reservation_status_date) AS month,
    COUNT(*) AS total_booked,
    ROUND(AVG(adr), 2) AS avg_rate
FROM
    hotel_bookings
WHERE
    is_canceled = 0
GROUP BY 1, 2, 3
ORDER BY 1 ASC, 2 ASC, 3 ASC;



-- 10. What is the total monthly revenue received from each hotel?
SELECT
    hotel,
    YEAR(reservation_status_date) AS year,
    MONTH(reservation_status_date) AS month,
    ROUND(SUM(rev_per_booking), 2) AS total_rev
FROM
    (SELECT
         *,
         ROUND((stays_in_week_nights + stays_in_weekend_nights) * adr, 2) AS rev_per_booking
     FROM
         hotel_bookings
     WHERE
         reservation_status NOT IN ('Canceled', 'No-Show')) t
GROUP BY 1, 2, 3
ORDER BY 1 ASC, 2 ASC, 3 ASC;