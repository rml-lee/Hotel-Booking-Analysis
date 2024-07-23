# Hotel Booking Analysis

# Business Task
The goal of this project is to gather actionable insights and identify trends from the provided dataset of a fictitious pizza place.

**Domain**: Food Service and Hospitality

## Table of Contents
- [Data Source](#data-source)
- [Data Dictionary](#data-dictionary)
- [Data Cleaning & Exploration](#data-cleaning--Exploration)
- [Data Schema](#data-schema)
- [Data Transformation](#data-transformation)
- [Findings & Analysis](#findings--analysis)

# Data Source


# Data Dictionary
| **Field Name**                      | **Description**                                                                                                                                                                                                                     |
|-------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **adr**                             | Average Daily Rate as defined by BO, BL, and TR / Calculated by dividing the sum of all lodging transactions by the total number of staying nights                                                                                   |
| **adults**                          | Number of adults                                                                                                                                                                                                                    |
| **agent**                           | ID of the travel agency that made the booking                                                                                                                                                                                       |
| **arrival_date_day_of_month**       | Day of the month of the arrival date                                                                                                                                                                                                |
| **arrival_date_month**              | Month of arrival date with 12 categories: “January” to “December”                                                                                                                                                                   |
| **arrival_date_week_number**        | Week number of the arrival date                                                                                                                                                                                                     |
| **arrival_date_year**               | Year of arrival date                                                                                                                                                                                                                |
| **assigned_room_type**              | Code for the type of room assigned to the booking. Sometimes the assigned room type differs from the reserved room type due to hotel operation reasons (e.g., overbooking) or by customer request. Code is presented for anonymity. |
| **babies**                          | Number of babies                                                                                                                                                                                                                    |
| **booking_changes**                 | Number of changes/amendments made to the booking from the moment the booking was entered on the PMS until the moment of check-in or cancellation                                                                                     |
| **children**                        | Number of children                                                                                                                                                                                                                  |
| **company**                         | ID of the company/entity that made the booking or responsible for paying the booking. ID is presented instead of designation for anonymity reasons                                                                                   |
| **country**                         | Country of origin. Categories are represented in the ISO 3155–3:2013 format                                                                                                                                                         |
| **customer_type**                   | Type of booking, assuming one of four categories: Contract, Group, Transient, Transient-party                                                                                                                                       |
| **days_in_waiting_list**            | Number of days the booking was in the waiting list before it was confirmed to the customer                                                                                                                                           |
| **deposit_type**                    | Indication on if the customer made a deposit to guarantee the booking. Categories: No Deposit, Non Refund, Refundable                                                                                                                |
| **distribution_channel**            | Booking distribution channel. The term “TA” means “Travel Agents” and “TO” means “Tour Operators”                                                                                                                                   |
| **is_canceled**                     | Value indicating if the booking was canceled (1) or not (0).                                                                                                                                                                        |
| **is_repeated_guest**               | Value indicating if the booking name was from a repeated guest (1) or not (0).                                                                                                                                                      |
| **lead_time**                       | Number of days that elapsed between the entering date of the booking into the PMS and the arrival date.                                                                                                                             |
| **market_segment**                  | Market segment designation. In categories, the term “TA” means “Travel Agents” and “TO” means “Tour Operators”.                                                                                                                     |
| **meal**                            | Type of meal booked: Undefined/SC – no meal package; BB – Bed & Breakfast; HB – Half board (breakfast and one other meal – usually dinner); FB – Full board (breakfast, lunch, and dinner)                                          |
| **previous_bookings_not_canceled**  | Number of previous bookings not cancelled by the customer prior to the current booking.                                                                                                                                             |
| **previous_cancellations**          | Number of previous bookings that were cancelled by the customer prior to the current booking.                                                                                                                                       |
| **required_car_parking_spaces**     | Number of car parking spaces required by the customer.                                                                                                                                                                              |
| **reservation_status**              | Reservation last status: Canceled – booking was canceled by the customer; Check-Out – customer has checked in but already departed; No-Show – customer did not check-in and did not inform the hotel of the reason why.               |
| **reservation_status_date**         | Date at which the last status was set. This variable can be used in conjunction with the reservation_status to understand when the booking was canceled or when the customer checked-out of the hotel.                               |
| **reserved_room_type**              | Code of room type reserved. Code is presented instead of designation for anonymity reasons.                                                                                                                                        |
| **stays_in_weekend_nights**         | Number of weekend nights (Saturday or Sunday) the guest stayed or booked to stay at the hotel.                                                                                                                                      |
| **stays_in_week_nights**            | Number of week nights (Monday to Friday) the guest stayed or booked to stay at the hotel.                                                                                                                                           |
| **total_of_special_requests**       | Number of special requests made by the customer (e.g., twin bed or high floor).                                                                                                                                                     |



# Data Cleaning & Exploration

Tools used:
| Python | Jupyter | Pandas | Numpy | Conda |
|--------|-------|---------|--------|-------|
| <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/cc008c2a-1e65-46fe-99aa-fcef90c84b2b" width="55" height="55"/> | <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/029ca083-0c94-40b2-96bc-5a4ccd5199bb" width="50" height="55"/> | <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/1f1bf784-7c28-491e-9c70-d78a8cfd9ec3" width="55" height="55"/> | <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/ca024f21-791d-4cc9-836a-710df995811a" width="55" height="55"/> | <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/752b8489-df2a-457b-ab2e-294b34774a78" width="55" height="55"/> |

In this section, you'll find a Jupyter Notebook that demonstrates my proficiency in data cleaning and exploration using pandas. This notebook showcases various techniques to clean and preprocess raw data, ensuring that it's ready for analysis.

You can access the Jupyter Notebook file [here](https://github.com/rml-lee/Hotel-Booking-Analysis/blob/main/Data%20Cleaning%20%26%20Exploration%20-%20Hotel%20Bookings.ipynb).

# Data Schema

After cleaning the data, this is our schema that will be used throughout this project.

<img src="https://github.com/rml-lee/Hotel-Booking-Analysis/blob/main/hotel%20bookings%20schema.png" alt="Description" width="500"/>

# Data Transformation

Tools used:
| MySQL |
| ----- |
| <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/a1f80d2c-f675-4c97-b497-f21377fd0042" width="55" height="55"/> |

The provided SQL script contains a set of questions with queries used to gather insight about this dataset using MySQL. 

You can access the SQL file [here](https://github.com/rml-lee/Hotel-Booking-Analysis/blob/main/Hotel%20Bookings%20Analysis.sql).

# Findings & Analysis

Tools used:
| Tableau |
| ------- |
| <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/fb9f12dc-8640-4197-b3f6-ab0ce2241bc1" width="55" height="55"/> |


To conclude, I've provided an analysis of the results from a few of the questions provided within the SQL file. This section will also include visuals for our data and discussing the implications and potential impact on the business or research problem at hand. The goal is to provide a thorough and actionable understanding of the data, guiding informed decision-making.

You can review the results [here](https://github.com/rml-lee/Hotel-Booking-Analysis/blob/main/Findings-Analysis.md).
