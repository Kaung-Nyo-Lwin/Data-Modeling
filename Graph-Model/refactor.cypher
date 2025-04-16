MERGE (u1:User {id: 1, 
                name: 'John Doe', 
                email: 'johndoe@example.com', 
                phone: '1234567890', 
                address: '123 Main St', 
                preferedRange: 10.0, 
                createdAt: '2023-01-01T00:00:00Z', 
                updatedAt: '2023-01-01T00:00:00Z'
                }
        )
ON CREATE SET
    u1.numOfBookings = 0,
    u1.totalSpent = 0.0

MERGE (s1:Space {
    id: 1, 
    name: 'Space A', 
    address: '123 Space St', 
    size: 100.0, 
    numRooms: 3, 
    hourlyRate: 20.0, 
    halfdayRate: 100.0, 
    fulldayRate: 180.0, 
    rentFrom: '08:00:00', 
    rentTo: '17:00:00', 
    status: 'open', 
    remark: 'Great space for events',
    createdAt: '2025-01-01T00:00:00Z', 
    updatedAt: '2025-01-01T00:00:00Z'
    }
        )
ON CREATE SET
    s1.rating = 0
WITH s1
MATCH (u1:User {id: 1})
SET u1:Owner
MERGE (u1)-[:OWNS]->(s1)
MERGE (l1:Location {name: 'Downtown'})
MERGE (s1)-[:LOCATED_IN]->(l1)
MERGE (pr1:PriceRange {minPrice: s1.hourlyRate - (s1.hourlyRate % 5), 
                        maxPrice: s1.hourlyRate - (s1.hourlyRate % 5) + 5})
ON CREATE SET
    pr1.numOfBookings = 0,
    pr1.totalSpent = 0.0
MERGE (s1)-[:IN_PRICE_RANGE]->(pr1)

MERGE (f1:Feedback {reviews: 'Great space, very clean and well-maintained.'})
WITH f1
MATCH (u1:User {id: 1})
MERGE (u1)-[:GIVES_FEEDBACK]->(f1)
WITH f1,u1
MATCH (s1:Space {id: 1})
MERGE (f1)-[:FEEDBACK_FOR]->(s1)
MERGE (r1:Rating {value: 4})
MERGE (f1)-[:RATING_GIVEN]->(r1)
MERGE (r1)-[:RATING_FOR]->(s1)
SET s1.rating = (s1.rating + r1.value) / 2

// Add booking nodes

// Create Booking node
MERGE (b1:Booking {id: 1, 
                    bookingDate: '2025-01-10', 
                    remark: 'First booking', 
                    createdAt: '2025-01-01T00:00:00Z', 
                    updatedAt: '2025-01-01T00:00:00Z'
                    })
// Link Booking node to User
WITH b1
MATCH (u1:User {id: 1})
MERGE (u1)-[:BOOKED_BY]->(b1)
// Link Booking node to Space
WITH b1, u1
MATCH (s1:Space {id: 1})
MERGE (b1)-[:BOOKED_FOR]->(s1)
// Create Timeslot nodes and link to Booking
MERGE (t1:Timeslot {slot: '09_10'})
MERGE (b1)-[:HOUR_BOOKED_FOR]->(t1)
MERGE (t2:Timeslot {slot: '10_11'})
MERGE (b1)-[:HOUR_BOOKED_FOR]->(t2)
// Calculate total duration and price
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
// Create Day node
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
// Link Booking node to Day
MERGE (b1)-[:DAY_OF_THE_WEEK]->(d1)
// Create Month node
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
// Link Booking node to Month
MERGE (b1)-[:MONTH]->(m1)
// Create Year node
MERGE (y1:Year {year: date(b1.bookingDate).year})
ON CREATE SET
    y1.numOfBookings = 0,
    y1.totalSpent = 0.0
// Link Booking node to Year
MERGE (b1)-[:YEAR]->(y1)
// Create Season node
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
// Link Booking node to Season
MERGE (b1)-[:SEASON]->(se1)
// Update Day, Month, Year, and Season nodes and price range
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
// Add payment nodes
MERGE (p1:Payment {id: 1, amount: b1.totalPrice, transacId: 'TXN12345', bank: 'Bank A', status: 'completed', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
MERGE (p1)-[:PAID_FOR]->(b1)
MERGE (u1)-[:MADE_PAYMENT]->(p1)
SET b1:Paid