# Graph Model Implementation

This directory contains the implementation of a space rental management system using a graph database model (Neo4j).

## Overview

The graph model approach represents data using nodes and relationships, making it ideal for:
- Complex relationships between entities
- Path-finding and traversal queries
- Flexible data connections
- Pattern matching queries

## Database Schema

### Nodes

1. **User**
```cypher
(:User {
  id: ID,
  name: String,
  email: String,
  phone: String,
  address: String,
  preferredRange: Float,
  createdAt: DateTime,
  updatedAt: DateTime
})
```

2. **Space**
```cypher
(:Space {
  id: ID,
  name: String,
  description: String,
  address: String,
  area: String,
  capacity: Integer,
  pricePerHour: Float,
  createdAt: DateTime,
  updatedAt: DateTime
})
```

3. **Booking**
```cypher
(:Booking {
  id: ID,
  startTime: DateTime,
  endTime: DateTime,
  totalPrice: Float,
  status: String,
  createdAt: DateTime,
  updatedAt: DateTime
})
```

### Relationships

1. **User-Space Relationships**
```cypher
(user:User)-[:OWNS]->(space:Space)
(user:User)-[:RATED {rating: Integer, comment: String, date: DateTime}]->(space:Space)
```

2. **Booking Relationships**
```cypher
(user:User)-[:BOOKED]->(booking:Booking)-[:FOR]->(space:Space)
(booking:Booking)-[:PAID {method: String, transactionId: String}]->(payment:Payment)
```

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
MATCH (u:User {id: $userId})
MATCH (s:Space)
WHERE NOT (s)<-[:FOR]-(:Booking {status: 'ACTIVE'})
  AND distance(point(u.location), point(s.location)) <= u.preferredRange
RETURN s
```

2. **Get User Booking History with Ratings**
```cypher
MATCH (u:User {id: $userId})-[:BOOKED]->(b:Booking)-[:FOR]->(s:Space)
OPTIONAL MATCH (u)-[r:RATED]->(s)
RETURN b, s, r
ORDER BY b.startTime DESC
```

## Directory Structure

- `/figure`: Visualization diagrams and models
- `/scripts`: Cypher scripts and utilities
- `/mock_data`: Sample datasets and test data
