//// ----------- Kaung Nyo Lwin ------------------

/// 1. User Registration

MERGE (u1:User {id: 1, 
                name: 'John Doe', 
                email: 'johndoe@example.com', 
                phone: '1234567890', 
                address: '123 Main St', 
                preferedRange: 10.0,
                numOfBookings: 0, 
                totalSpent: 0.0, 
                createdAt: '2023-01-01T00:00:00Z', 
                updatedAt: '2023-01-01T00:00:00Z'
                }
        )

/// 2. Booking the space

// 1. Create Booking node
MERGE (b1:Booking {id: 1, 
                    bookingDate: '2025-01-10', 
                    remark: 'First booking', 
                    createdAt: '2025-01-01T00:00:00Z', 
                    updatedAt: '2025-01-01T00:00:00Z'
                    })
// 2. Link Booking node to User
WITH b1
MATCH (u1:User {id: 1})
MERGE (u1)-[:BOOKED_BY]->(b1)
// 3. Link Booking node to Space
WITH b1, u1
MATCH (s1:Space {id: 1})
MERGE (b1)-[:BOOKED_FOR]->(s1)
// 4. Create Timeslot nodes and link to Booking
MERGE (t1:Timeslot {slot: '09_10'})
MERGE (b1)-[:HOUR_BOOKED_FOR]->(t1)
MERGE (t2:Timeslot {slot: '10_11'})
MERGE (b1)-[:HOUR_BOOKED_FOR]->(t2)
// 5. Calculate and update total duration and price and set the user as customer
WITH b1, u1, s1
// Count relationships using pattern comprehension
SET b1.totalDuration = SIZE([(b1)-[:HOUR_BOOKED_FOR]->() | 1])
// Fix CASE logic (use totalDuration)
SET b1.spacePrice = CASE
  WHEN b1.totalDuration < 12 THEN s1.hourlyRate * b1.totalDuration
  WHEN b1.totalDuration = 12 THEN s1.halfdayRate
  WHEN b1.totalDuration = 24 THEN s1.fulldayRate
  ELSE s1.halfdayRate + (s1.hourlyRate * (b1.totalDuration - 12))
END
SET b1.sysFee = b1.spacePrice * 0.03
SET b1.totalPrice = b1.spacePrice + b1.sysFee
SET u1.numOfBookings = u1.numOfBookings + 1
SET u1.totalSpent = u1.totalSpent + b1.totalPrice
SET u1:Customer
// 6. Create Day node
MERGE (d1:Day {day: 
    CASE date(b1.bookingDate).dayOfWeek
        WHEN 1 THEN 'Monday'
        WHEN 2 THEN 'Tuesday'
        WHEN 3 THEN 'Wednesday'
        WHEN 4 THEN 'Thursday'
        WHEN 5 THEN 'Friday'
        WHEN 6 THEN 'Saturday'
        ELSE 'Sunday'
    END})
ON CREATE SET
    d1.numOfBookings = 0,
    d1.totalSpent = 0.0
// 7. Link Booking node to Day
MERGE (b1)-[:DAY_OF_THE_WEEK]->(d1)
// 8. Create Month node
MERGE (m1:Month {month: 
    CASE date(b1.bookingDate).month
        WHEN 1 THEN 'January'
        WHEN 2 THEN 'February'
        WHEN 3 THEN 'March'
        WHEN 4 THEN 'April'
        WHEN 5 THEN 'May'
        WHEN 6 THEN 'June'
        WHEN 7 THEN 'July'
        WHEN 8 THEN 'August'
        WHEN 9 THEN 'September'
        WHEN 10 THEN 'October'
        WHEN 11 THEN 'November'
        ELSE 'December'
    END, 
    year: date(b1.bookingDate).year, 
    numMonth: date(b1.bookingDate).month})
ON CREATE SET
    m1.numOfBookings = 0,
    m1.totalSpent = 0.0
// 9. Link Booking node to Month
MERGE (b1)-[:MONTH]->(m1)
// 10. Create Year node
MERGE (y1:Year {year: date(b1.bookingDate).year})
ON CREATE SET
    y1.numOfBookings = 0,
    y1.totalSpent = 0.0
// 11. Link Booking node to Year
MERGE (b1)-[:YEAR]->(y1)
// 12. Create Season node
MERGE (y1)-[:YEAR_OF]->(m1)
MERGE (se1:Season {season: 
  CASE 
    WHEN date(b1.bookingDate).month IN [1,2,3] THEN 'Winter'
    WHEN date(b1.bookingDate).month IN [4,5,6] THEN 'Spring'
    WHEN date(b1.bookingDate).month IN [7,8,9] THEN 'Summer'
    ELSE 'Fall'
  END})
ON CREATE SET
    se1.numOfBookings = 0,
    se1.totalSpent = 0.0
// 13. Link Booking node to Season
MERGE (b1)-[:SEASON]->(se1)
// 14. Update Day, Month, Year, and Season nodes and price range
SET d1.numOfBookings = d1.numOfBookings + 1
SET d1.totalSpent = d1.totalSpent + b1.totalPrice
SET m1.numOfBookings = m1.numOfBookings + 1
SET m1.totalSpent = m1.totalSpent + b1.totalPrice
SET y1.numOfBookings = y1.numOfBookings + 1
SET y1.totalSpent = y1.totalSpent + b1.totalPrice
SET se1.numOfBookings = se1.numOfBookings + 1
SET se1.totalSpent = se1.totalSpent + b1.totalPrice
WITH b1, u1, s1
MATCH (s1)-[:IN_PRICE_RANGE]->(pr1)
SET pr1.numOfBookings = pr1.numOfBookings + 1
SET pr1.totalSpent = pr1.totalSpent + b1.totalPrice

/// 3. Pay the charges

MATCH (b1:Booking {id: 1})
MERGE (p1:Payment {id: 1, 
                    amount: b1.totalPrice, 
                    transacId: 'TXN12345', 
                    bank: 'Bank A', 
                    status: 'completed', 
                    createdAt: '2025-01-01T00:00:00Z', 
                    updatedAt: '2025-01-01T00:00:00Z'
                    }
        )
MERGE (p1)-[:PAID_FOR]->(b1)
WITH p1, b1
MATCH (u1:User {id: 1})
MERGE (u1)-[:MADE_PAYMENT]->(p1)
SET b1:Paid

/// 4. Most spenders Report

MATCH (c:Customer)
RETURN 
    c.name AS `Customer Name`, 
    c.numOfBookings AS `Number of Bookings`, 
    c.totalSpent AS `Total Spent`, 
    c.totalSpent / ((datetime().epochSeconds - datetime(c.createdAt).epochSeconds) 
    / 86400.0) AS `Spent per day`,
    (datetime().epochSeconds - datetime(c.createdAt).epochSeconds) 
    / 86400.0 AS `Days on the platform`
ORDER BY c.totalSpent DESC

/// 5. Monthly Revenue Report

MATCH (y:Year {year: 2025}) - [yf:YEAR_OF] -> (m:Month)
// RETURN y, yf, m
RETURN m.month AS `Month`,
       m.year AS `Year`,
       m.numOfBookings AS `Number of Bookings`,
       m.totalSpent AS `Total Revenue`,
       m.totalSpent * 0.03 AS `System Fee`,
       m.totalSpent * 0.97 AS `Space Price`
ORDER BY m.numMonth ASC

/// 6. Popular Day of the Week report

MATCH (d:Day)
RETURN d.day AS `Day of the Week`,
       d.numOfBookings AS `Number of Bookings`,
       d.totalSpent AS `Total Revenue`,
       d.totalSpent * 0.03 AS `System Fee`,
       d.totalSpent * 0.97 AS `Space Price`
ORDER BY d.numOfBookings DESC
       
/// 7. Rental Report by price range

MATCH (pr:PriceRange)
RETURN pr.minPrice AS `Min Price`,
       pr.maxPrice AS `Max Price`,
       pr.numOfBookings AS `Number of Bookings`,
       pr.totalSpent AS `Total Revenue`,
       pr.totalSpent * 0.03 AS `System Fee`,
       pr.totalSpent * 0.97 AS `Space Price`
ORDER BY pr.minPrice ASC

/// 8. Space Recommendation Query

// Find spaces in the user has ever booked
MATCH (u:User {id: 1}) - [by:BOOKED_BY] -> (b:Booking) - [bf:BOOKED_FOR] -> (s:Space)
WITH u, b, s, by, bf
// Filter spaces in the location
MATCH (s)-[li:LOCATED_IN] -> (l:Location {name: 'Downtown'})
WITH u, b, s, by, bf, l, li 
// Filter spaces in the price range
MATCH (s)-[ipr:IN_PRICE_RANGE] -> (pr:PriceRange)
WHERE u.preferedRange >= pr.minPrice AND u.preferedRange <= pr.maxPrice
// Return the results
// RETURN u, b, s, l, pr, by, bf, li, ipr,r, rf
RETURN s.name AS `Space`,
       l.name AS `Location`,
       Count(b) AS `Number of Bookings`,
       s.hourlyRate AS `Hourly Rate`,
       s.halfdayRate AS `Half Day Rate`,
       s.fulldayRate AS `Full Day Rate`,
       s.rating AS `Average Rating`
ORDER BY Count(b) DESC, s.rating DESC
// Get other spaces not booked by the user
UNION
MATCH (u:User {id: 1})
WITH u
MATCH (s:Space)
WHERE NOT (u:User {id: 1}) - [:BOOKED_BY] -> (:Booking) - [:BOOKED_FOR] -> (s:Space)
AND (s)-[:LOCATED_IN]->(:Location {name: 'Downtown'})
RETURN s.name AS `Space`,
       'Downtown' AS `Location`,
       0 AS `Number of Bookings`,
       s.hourlyRate AS `Hourly Rate`,
       s.halfdayRate AS `Half Day Rate`,
       s.fulldayRate AS `Full Day Rate`,
       s.rating AS `Average Rating`
ORDER BY s.rating DESC

//// ----------- Cassandra Chang ------------------

/// 1. Feedback Submission

MERGE (f1:Feedback {reviews: 'Great space, very clean and well-maintained.'})
WITH f1
MATCH (u1:User {id: 6})
MERGE (u1)-[:GIVES_FEEDBACK]->(f1)
WITH f1,u1
MATCH (s1:Space {id: 16})
MERGE (f1)-[:FEEDBACK_FOR]->(s1)
MERGE (r1:Rating {value: 3})
MERGE (f1)-[:RATING_GIVEN]->(r1)
MERGE (r1)-[:RATING_FOR]->(s1)
SET s1.rating = (s1.rating + r1.value) / 2

// 2. Rental Rate Adjustments

MATCH (s:Space {id: 1})
SET 
  s.hourlyRate = 30.0,
  s.halfdayRate = 120.0,
  s.fulldayRate = 200.0,
  s.updatedAt = datetime()
// Remove old price range relation
WITH s
OPTIONAL MATCH (s)-[r:IN_PRICE_RANGE]->()
DELETE r
// Calculate new range and connect to PriceRange
WITH s, s.hourlyRate - (s.hourlyRate % 5) AS minPrice
WITH s, minPrice, minPrice + 5 AS maxPrice
MERGE (pr:PriceRange {minPrice: minPrice, maxPrice: maxPrice})
  ON CREATE SET pr.numOfBookings = 0, pr.totalSpent = 0.0
MERGE (s)-[:IN_PRICE_RANGE]->(pr)

/// 3. User Profile Updates

MATCH (u:User {id: 7})
SET 
  u.address = '456 New Avenue',
  u.phone = '9876543210',
  u.updatedAt = datetime()

/// 1. Longest Duration Booking Ever

// Step 1: Get the longest booking duration per space
MATCH (b:Booking)-[:BOOKED_FOR]->(s:Space)
WITH s, MAX(b.totalDuration) AS maxDuration

// Step 2: Find the bookings that match that max duration for each space
MATCH (b:Booking)-[:BOOKED_FOR]->(s)
WHERE b.totalDuration = maxDuration

// Step 3: Get the user who made the booking
MATCH (u:User)-[:BOOKED_BY]->(b)

RETURN 
  s.name AS space, 
  b.totalDuration AS hours, 
  b.bookingDate AS date, 
  elementId(b) AS bookingId,
  u.name AS bookedBy,
  b.totalPrice AS amountSpent
ORDER BY hours DESC


/// 2. Customer Booking History

MATCH (u:User {name: "Grace Pink"})-[b:BOOKED_BY]->(c:Booking)-[:BOOKED_FOR]->(s:Space)
WITH u, b, c, s, labels(c) AS labelList,
     [label IN labels(c) WHERE label <> "Booking"][0] AS bookingStatus
RETURN 
  u.name AS customerName, 
  elementId(b) AS bookingId,
  s.name AS spaceName, 
  c.totalPrice AS totalPrice, 
  c.totalDuration AS stayDurationInHours,
  c.bookingDate AS bookingDate, 
  c.updatedAt AS updatedAt, 
  bookingStatus

/// 3. Space Owner Earning Report

MATCH (owner:User {name: "Bob Brown"})-[:OWNS]->(s:Space)
MATCH (b:Booking)-[:BOOKED_FOR]->(s)
WHERE b.spacePrice IS NOT NULL
WITH s.name AS spaceName,
     COUNT(b) AS totalBookings,
     SUM(b.spacePrice) AS totalEarnings
RETURN 
  spaceName,
  totalBookings,
  totalEarnings
ORDER BY totalEarnings DESC

/// 4. Space Utilization Report

WITH date() AS today, date() - duration({months: 1}) AS oneMonthAgo
MATCH (owner:User {name: "Chris Green"})-[:OWNS]->(s:Space)
OPTIONAL MATCH (s)<-[:BOOKED_FOR]-(b:Booking)
WHERE b.bookingDate IS NOT NULL
WITH s, MAX(b.bookingDate) AS lastBookingDate, oneMonthAgo
WHERE lastBookingDate IS NULL OR lastBookingDate < oneMonthAgo
OPTIONAL MATCH (s)-[:LOCATED_IN]->(l:Location)
RETURN 
  s.name AS spaceName,
  l.name AS location,
  s.status AS status,
  s.hourlyRate as hourlyRate,
  s.halfdayRate as halfDayRate,
  s.fulldayRate as fullDayRate,
  lastBookingDate

/// 5. Most Frequently Canceled Spaces

// Purpose: Identify listings with high cancellation counts and update if the owners should be given a warning before flagging them.
MATCH (b:Booking:Cancelled)-[:BOOKED_FOR]->(s:Space)
WITH s.name AS spaceName, COUNT(*) AS cancelledCount
RETURN spaceName, 
       cancelledCount,
       CASE 
           WHEN cancelledCount > 5 THEN "Yes"
           ELSE "No"
       END AS sendFlagWarning
ORDER BY cancelledCount DESC

//// ----------- Truong Vuong ------------------

// Transaction:
// 1.
MATCH (s:Space {name: "Space Z"})
SET s.status = "cloesed"
RETURN s.name, s.status

// 2.
MATCH (s:Space {name: "Space Z"})
DETACH DELETE s

// 3.
MATCH (s:Space {name: "Space Z"})
SET s.facilities = '{"AC": 2, "kitchen": 1}'
RETURN s.name, s.facilities

// 1============================================================================================================
Customer Retention Report: Calculates the total bookings, total spend, last booking date, and retention status for each customer. Retention status can be based on the frequency of bookings (e.g., the number of TotalBokings is greater than or equal to 3 bookings => "Loyal").

MATCH (u:User:Customer)-[:BOOKED_BY]->(b:Booking)
WITH 
  u.name AS CustomerName,
  COUNT(b) AS TotalBookings,
  SUM(b.totalPrice) AS TotalSpend,
  MAX(b.bookingDate) AS LastBookingDate
RETURN 
  CustomerName,
  TotalBookings,
  TotalSpend,
  LastBookingDate,
  CASE 
    WHEN TotalBookings >= 3 THEN 'Loyal'
    ELSE 'Casual'
  END AS RetentionStatus
ORDER BY TotalBookings DESC

// 2============================================================================================================
Total System Fee: calculates the total system fee by month, providing insights into monthly revenue trends specifically for System. This helps us monitor our revenue streams from booking transactions.

MATCH (b:Booking)
WITH 
  date(b.bookingDate).year AS Year,
  date(b.bookingDate).month AS MonthNum,
  apoc.text.format('%04d-%02d', [date(b.bookingDate).year, date(b.bookingDate).month]) AS Month,
  SUM(b.sysFee) AS TotalSystemFee,
  COUNT(b) AS TotalBookings
RETURN 
  Month,
  TotalSystemFee,
  TotalBookings
ORDER BY Month ASC

// 3============================================================================================================
Booking Trends by Season Report: Analyzes seasonal demand and calculates the TotalOwnerRevenue, which represents the total revenue for space owners, excluding the sysFee. This helps owners adjust pricing and promotions accordingly.

MATCH (b:Booking)-[:SEASON]->(s:Season)
WITH 
  s.season AS Season,
  COUNT(b) AS TotalBookings,
  SUM(b.totalPrice - b.sysFee) AS TotalOwnerRevenue
RETURN 
  Season,
  TotalBookings,
  TotalOwnerRevenue
ORDER BY Season

// 4============================================================================================================
Customer Feedback Sentiment Report: Categorizes reviews into positive, neutral, or negative, providing insights into customer satisfaction and areas for improvement.
MATCH (f:Feedback)-[:FEEDBACK_FOR]->(s:Space)
OPTIONAL MATCH (f)-[:RATING_GIVEN]->(r:Rating)
OPTIONAL MATCH (s)-[:LOCATED_IN]->(l:Location)
WITH 
  s.name AS SpaceName,
  COALESCE(l.name, 'Unknown') AS Location,
  COUNT(f) AS TotalReviews,
  COUNT(CASE WHEN TOFLOAT(r.value) >= 4 THEN 1 END) AS PositiveReviews,
  COUNT(CASE WHEN TOFLOAT(r.value) >= 3 AND TOFLOAT(r.value) < 4 THEN 1 END) AS NeutralReviews,
  COUNT(CASE WHEN TOFLOAT(r.value) < 3 THEN 1 END) AS NegativeReviews,
  ROUND(AVG(TOFLOAT(r.value)), 2) AS AverageRating
RETURN 
  SpaceName,
  Location,
  TotalReviews,
  CASE WHEN TotalReviews = 0 THEN 0 ELSE ROUND(PositiveReviews * 100.0 / TotalReviews, 2) END AS PositiveSentimentPercentage,
  CASE WHEN TotalReviews = 0 THEN 0 ELSE ROUND(NeutralReviews * 100.0 / TotalReviews, 2) END AS NeutralSentimentPercentage,
  CASE WHEN TotalReviews = 0 THEN 0 ELSE ROUND(NegativeReviews * 100.0 / TotalReviews, 2) END AS NegativeSentimentPercentage,
  AverageRating
ORDER BY SpaceName ASC

// 5============================================================================================================
Space Demand and Performance Report: Highlights the most and least demanded spaces, showcasing booking trends and performance metrics like revenue contribution and utilization disparities.

MATCH (b:Booking)-[:BOOKED_FOR]->(s:Space)
OPTIONAL MATCH (s)-[:LOCATED_IN]->(l:Location)
WITH 
  s.name AS SpaceName,
  COALESCE(l.name, 'Unknown') AS Location,
  SUM(b.totalPrice) AS TotalRevenue,
  COUNT(b) AS TotalBookings,
  ROUND(AVG(s.hourlyRate), 2) AS AverageBookingRate
RETURN 
  SpaceName,
  Location,
  TotalRevenue,
  TotalBookings,
  AverageBookingRate,
  CASE 
    WHEN TotalBookings >= 5 THEN 'High Demand'
    WHEN TotalBookings >= 2 THEN 'Moderate Demand'
    ELSE 'Low Demand'
  END AS PerformanceStatus
ORDER BY TotalBookings DESC

//// ----------- Aymen Zubair Qureshi ------------------

// TRANSACTIONS:

// Feedback removal:

MATCH (s:Space {id: 2})
DETACH DELETE s


// Edit the booking:

MATCH (b:Booking {id: 3})
SET b.bookingDate = "2025-04-01"
RETURN b

// New space listing:

MATCH (owner:Owner {name: "Chris Green"})
CREATE (space:Space {
  id: 11,
  name: "Space Y",
  address: "101 Innovation Blvd",
  rating: 0,
  remark: "Creative open space",
  createdAt: datetime("2025-04-16T00:00:00Z"),
  updatedAt: datetime("2025-04-16T00:00:00Z"),
  status: "open",
  hourlyRate: 30.0,
  fulldayRate: 220.0,
  halfdayRate: 120.0,
  rentFrom: "09:00:00",
  rentTo: "17:00:00",
  size: 180.0,
  numRooms: 3
})
MERGE (owner)-[:OWNS]->(space)


// QUERIES:

// Retrieve a specific booking detail:
// Create Owner node
CREATE (owner:Owner {name: "Chris Green"})

// Create Space node
CREATE (space:Space {name: "Space A", location: "Downtown"})

// Create Booking node
CREATE (booking:Booking {bookingDate: "2025-04-10"})

// Create User node (Eva Black)
CREATE (user:User {name: "Eva Black"})

// Create Rating node
CREATE (rating:Rating {rating: 4.5})

// Create Payment node
CREATE (payment:Payment {amount: 41.2, status: "completed", transacId: "TXN12345"})

// Create Relationships
CREATE (owner)-[:OWNS]->(space)
CREATE (user)-[:BOOKED_BY]->(booking)
CREATE (booking)-[:BOOKED_FOR]->(space)
CREATE (user)-[:RATED]->(rating)
CREATE (rating)-[:RATING_FOR]->(space)
CREATE (payment)-[:PAID_FOR]->(booking)

// Use WITH to separate the CREATE and MATCH statements
WITH owner, space, booking, user, rating, payment

// Match relationships for visualization
MATCH (owner)-[r1:OWNS]->(space)
MATCH (user)-[r2:BOOKED_BY]->(booking)
MATCH (booking)-[r3:BOOKED_FOR]->(space)
MATCH (user)-[r4:RATED]->(rating)
MATCH (rating)-[r5:RATING_FOR]->(space)
MATCH (payment)-[r6:PAID_FOR]->(booking)

// Return nodes and their relationships
RETURN owner, space, booking, user, rating, payment, 
       r1 AS owned_by_relation, 
       r2 AS booked_by_relation, 
       r3 AS booked_for_relation, 
       r4 AS rated_by_relation,
       r5 AS rating_for_relation, 
       r6 AS paid_for_relation

// Get the most booked spaces by frequency
MATCH (space:Space)<-[r:BOOKED_FOR]-(booking:Booking)
RETURN space.name AS space_name, COUNT(r) AS booking_frequency
ORDER BY booking_frequency DESC
LIMIT 10


// OWNER REVIEWS FEEDBACK
 MATCH (owner: Owner {name: "Chris Green"})-[r1:OWNS]->(space: Space {name: "Space B"})
MATCH (user: User {name: "Eva Black"})-[r2:GIVES_FEEDBACK]->(feedback:Feedback) MERGE (feedback)-[r3: FEEDBACK_FOR] ->(space)
MERGE (user)-[r4: GIVES FEEDBACK]->(feedback)
RETURN owner, space, user, feedback, r1, r2, r3, r4

// RECENTLY LISTED SPACES QUERY:


MATCH (owner:Owner)-[:OWNS]->(space:Space)
WHERE space.createdAt IS NOT NULL
RETURN space.name AS Name,
       space.createdAt AS Created_At,
       owner.name AS Owner_Name
ORDER BY space.createdAt DESC
LIMIT 10

// POPULAR BOOKING TIME SLOTS:

MATCH (b:Booking)-[:BOOKED_FOR]->(s:Space)
WHERE b.time_slot IS NOT NULL
WITH b.time_slot AS time_slot, count(*) AS total_bookings
RETURN time_slot, total_bookings
ORDER BY total_bookings DESC
LIMIT 5

