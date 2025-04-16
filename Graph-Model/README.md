# Graph Model Implementation

This directory contains the implementation of a space rental management system using a graph database model (Neo4j).

## Overview

The graph model approach represents data using nodes and relationships, making it ideal for:
- Complex relationships between entities
- Path-finding and traversal queries
- Flexible data connections
- Pattern matching queries

## Database Schema

### Core Labels

1. **User**
```cypher
(u1:User {
    id: 1, 
    name: 'John Doe', 
    email: 'johndoe@example.com', 
    phone: '1234567890', 
    address: '123 Main St', 
    preferedRange: 10.0, 
    createdAt: '2023-01-01T00:00:00Z', 
    updatedAt: '2023-01-01T00:00:00Z'
    })
ON CREATE SET
    u1.numOfBookings = 0,
    u1.totalSpent = 0.0
```

2. **Space**
```cypher
(s1:Space {
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
    })
ON CREATE SET
    s1.rating = 0
```

3. **Booking**
```cypher
(b1:Booking {
    id: 1, 
    bookingDate: '2025-01-10', 
    remark: 'First booking', 
    createdAt: '2025-01-01T00:00:00Z', 
    updatedAt: '2025-01-01T00:00:00Z'
    })
```

4. **Feedback**
```cypher
(f1:Feedback {
    id: 1, 
    review: 'Great space, very clean and well-maintained.',
    createdAt: '2025-01-01T00:00:00Z', 
    updatedAt: '2025-01-01T00:00:00Z'
    })
```

5. **Payment**
```cypher
(p1:Payment {
    id: 1, 
    amount: 100.0, 
    transacId: 'TXN12345', 
    bank: 'Bank A', 
    status: 'completed', 
    createdAt: '2025-01-01T00:00:00Z', 
    updatedAt: '2025-01-01T00:00:00Z'
    })
```

6. **Timeslot**
```cypher
(t1:Timeslot {slot: '09_10'})
ON CREATE SET
    t1.numOfBookings = 0,
    t1.totalSpent = 0.0
```

7. **Day**
```cypher
(d1:Day {day: 'Monday'})
ON CREATE SET
    d1.numOfBookings = 0,
    d1.totalSpent = 0.0
```

8. **Month**
```cypher
(m1:Month {month: 'January'})
ON CREATE SET
    m1.numOfBookings = 0,
    m1.totalSpent = 0.0
```

9. **Year**
```cypher
(y1:Year {year: 2025})
ON CREATE SET
    y1.numOfBookings = 0,
    y1.totalSpent = 0.0
```

10. **Season**
```cypher
(se1:Season {season: 'Winter'})
ON CREATE SET
    se1.numOfBookings = 0,
    se1.totalSpent = 0.0
```

11. **PriceRange**
```cypher
(pr1:PriceRange {minPrice: 20.0, maxPrice: 25.0})
ON CREATE SET
    pr1.numOfBookings = 0,
    pr1.totalSpent = 0.0
```

## ER Diagram

![ER Diagram](figure/ER.png)

## Key Features

1. **Relationship-Centric Design**
   - Direct representation of user interactions
   - Natural modeling of space ownership
   - Explicit booking flows

2. **Graph Traversal**
   - Efficient pathfinding for related entities
   - Easy discovery of connection patterns
   - Powerful recommendation capabilities

3. **Property Graph Model**
   - Rich properties on both nodes and relationships
   - Temporal data modeling
   - Flexible attribute management

## Advantages

1. **Query Performance**
   - Fast traversal of connected data
   - Efficient relationship exploration
   - Pattern matching optimization

2. **Flexibility**
   - Easy addition of new relationships
   - Dynamic property addition
   - Natural representation of complex networks

3. **Analytics Capabilities**
   - Built-in graph algorithms
   - Centrality calculations
   - Path optimization

## Limitations

1. **Scaling Complexity**
   - Distributed graph operations can be challenging
   - Complex sharding requirements

2. **Learning Curve**
   - Cypher query language specifics
   - Graph thinking paradigm
   - Different optimization techniques

## Sample Queries

1. **Find Available Spaces Near User**
```cypher
MATCH (y:Year {year: 2025}) - [yf:YEAR_OF] -> (m:Month)
RETURN y, yf, m
```

2. **Get User Booking History with Ratings**
```cypher
MATCH (u:User {id: 1}) - [by:BOOKED_BY] -> (b:Booking) - [bf:BOOKED_FOR] -> (s:Space)
WITH u, b, s, by, bf
MATCH (s)-[li:LOCATED_IN] -> (l:Location {name: 'Downtown'})
WITH u, b, s, by, bf, l, li 
MATCH (s)-[ipr:IN_PRICE_RANGE] -> (pr:PriceRange)
WHERE u.preferedRange >= pr.minPrice AND u.preferedRange <= pr.maxPrice
RETURN u, b, s, l, pr, by, bf, li, ipr
```

## Directory Structure

- `/figure`: Visualization diagrams and models
- `/scripts`: Cypher script
- `/Documentation`: Documentation
