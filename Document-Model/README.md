# Document Model Implementation

This directory contains the implementation of a space rental management system using a document-oriented database model (MongoDB).

## Overview

The document model approach organizes data in flexible, JSON-like documents, allowing for:
- Embedded documents for related data
- Dynamic schema evolution
- Rich querying capabilities
- Efficient handling of hierarchical data structures

## Database Schema

### Core Collections

1. **Users**
```json
{
  "_id": ObjectId,
  "name": String,
  "email": String,
  "phone": String,
  "address": String,
  "preferredRange": Number,
  "bookings": [{ /* References to bookings */ }],
  "reviews": [{ /* User's reviews */ }],
  "createdAt": Date,
  "updatedAt": Date
}
```

2. **Spaces**
```json
{
  "_id": ObjectId,
  "name": String,
  "description": String,
  "location": {
    "address": String,
    "coordinates": [Number],
    "area": String
  },
  "amenities": [String],
  "capacity": Number,
  "pricePerHour": Number,
  "availability": [{
    "date": Date,
    "slots": [{ "start": Date, "end": Date }]
  }],
  "reviews": [{
    "userId": ObjectId,
    "rating": Number,
    "comment": String,
    "date": Date
  }]
}
```

3. **Bookings**
```json
{
  "_id": ObjectId,
  "userId": ObjectId,
  "spaceId": ObjectId,
  "startTime": Date,
  "endTime": Date,
  "totalPrice": Number,
  "status": String,
  "payment": {
    "method": String,
    "status": String,
    "transactionId": String
  },
  "createdAt": Date,
  "updatedAt": Date
}
```

## Key Features

1. **Embedded Documents**
   - Reviews embedded within spaces for faster retrieval
   - Payment information embedded in bookings
   - Location details nested within space documents

2. **Referential Integrity**
   - User references in bookings and reviews
   - Space references in bookings

3. **Indexing Strategy**
   - Geospatial indexing on space locations
   - Compound indexes on booking dates and status
   - Text indexes on space descriptions for search

## Advantages

1. **Flexibility**
   - Easy schema evolution
   - Supports varying space attributes
   - Accommodates different payment methods

2. **Performance**
   - Fast retrieval of complete booking information
   - Efficient space search with geospatial queries
   - Quick access to embedded reviews

3. **Scalability**
   - Horizontal scaling capabilities
   - Efficient for read-heavy operations
   - Good for distributed systems

## Limitations

1. **Transaction Support**
   - Limited ACID compliance compared to relational databases
   - Complex transactions require additional application logic

2. **Data Redundancy**
   - Some data duplication in embedded documents
   - Requires careful management of consistency

## Sample Queries

1. **Find Available Spaces**
```javascript
db.spaces.find({
  "location.area": "Downtown",
  "availability.slots": {
    $elemMatch: {
      start: { $gte: new Date() }
    }
  }
})
```

2. **Get User Bookings with Space Details**
```javascript
db.bookings.aggregate([
  { $match: { userId: userId } },
  { $lookup: {
      from: "spaces",
      localField: "spaceId",
      foreignField: "_id",
      as: "space"
  }}
])
```

## Directory Structure

- `/mock_data`: Sample data sets for testing
- `/script`: Database scripts and utilities
- `/Documentation`: Additional documentation and guides
- `/export`: Data export utilities and templates
