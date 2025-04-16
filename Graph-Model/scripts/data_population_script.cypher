
// // select all nodes and relationships
// MATCH (n)-[r]->(m)
// RETURN n, r, m

// // delete all nodes and relationships
// MATCH (n)-[r]->(m)
// DELETE n, r, m

// // Delete a node, its relationships and all connected nodes
// MATCH (n)
// DETACH DELETE n

// // select all nodes
// MATCH (n)
// RETURN n

// add User Nodes
MERGE (u1:User {id: 1, name: 'John Doe', email: 'johndoe@example.com', phone: '1234567890', address: '123 Main St', preferedRange: 31.0, createdAt: '2023-01-01T00:00:00Z', updatedAt: '2023-01-01T00:00:00Z'})
ON CREATE SET
    u1.numOfBookings = 0,
    u1.totalSpent = 0.0

MERGE (u2:User {id: 2, name: 'Jane Smith', email: 'janesmith@example.com', phone: '0987654321', address: '456 Elm St', preferedRange: 15.0, createdAt: '2023-01-01T00:00:00Z', updatedAt: '2023-01-01T00:00:00Z'})
ON CREATE SET
    u2.numOfBookings = 0,
    u2.totalSpent = 0.0

MERGE (u3:User {id: 3, name: 'Alice Johnson', email: 'alicej@example.com', phone: '1231231234', address: '789 Oak St', preferedRange: 20.0, createdAt: '2023-01-01T00:00:00Z', updatedAt: '2023-01-01T00:00:00Z'})
ON CREATE SET
    u3.numOfBookings = 0,
    u3.totalSpent = 0.0

MERGE (u4:User {id: 4, name: 'Bob Brown', email: 'bobb@example.com', phone: '3213213214', address: '321 Birch St', preferedRange: 15.0, createdAt: '2023-01-01T00:00:00Z', updatedAt: '2023-01-01T00:00:00Z'})
ON CREATE SET
    u4.numOfBookings = 0,
    u4.totalSpent = 0.0

MERGE (u5:User {id: 5, name: 'Chris Green', email: 'chrisg@example.com', phone: '4564564567', address: '654 Pine St', preferedRange: 25.0, createdAt: '2023-01-01T00:00:00Z', updatedAt: '2023-01-01T00:00:00Z'})
ON CREATE SET
    u5.numOfBookings = 0,
    u5.totalSpent = 0.0

MERGE (u6:User {id: 6, name: 'David White', email: 'davidw@example.com', phone: '7897897890', address: '987 Cedar St', preferedRange: 30.0, createdAt: '2023-01-01T00:00:00Z', updatedAt: '2023-01-01T00:00:00Z'})
ON CREATE SET
    u6.numOfBookings = 0,
    u6.totalSpent = 0.0
MERGE (u7:User {id: 7, name: 'Eva Black', email: 'evab@example.com', phone: '1471471470', address: '258 Maple St', preferedRange: 35.0, createdAt: '2023-01-01T00:00:00Z', updatedAt: '2023-01-01T00:00:00Z'})
ON CREATE SET
    u7.numOfBookings = 0,
    u7.totalSpent = 0.0
MERGE (u8:User {id: 8, name: 'Frank Blue', email: 'frankb@example.com', phone: '3693693690', address: '369 Walnut St', preferedRange: 40.0, createdAt: '2023-01-01T00:00:00Z', updatedAt: '2023-01-01T00:00:00Z'})
ON CREATE SET
    u8.numOfBookings = 0,
    u8.totalSpent = 0.0
MERGE (u9:User {id: 9, name: 'Grace Pink', email: 'gracep@example.com', phone: '7417417410', address: '741 Cherry St', preferedRange: 45.0, createdAt: '2023-01-01T00:00:00Z', updatedAt: '2023-01-01T00:00:00Z'})
ON CREATE SET
    u9.numOfBookings = 0,
    u9.totalSpent = 0.0
MERGE (u10:User {id: 10, name: 'Hannah Yellow', email: 'hannahy@example.com', phone: '8528528520', address: '852 Spruce St', preferedRange: 50.0, createdAt: '2023-01-01T00:00:00Z', updatedAt: '2023-01-01T00:00:00Z'})
ON CREATE SET
    u10.numOfBookings = 0,
    u10.totalSpent = 0.0
MERGE (u11:User {id: 11, name: 'Irene Orange', email: 'ireneo@example.com', phone: '9638527410', address: '963 Cypress St', preferedRange: 10.0, createdAt: '2023-01-01T00:00:00Z', updatedAt: '2023-01-01T00:00:00Z'})
ON CREATE SET
    u11.numOfBookings = 0,
    u11.totalSpent = 0.0
MERGE (u12:User {id: 12, name: 'Kelly Red', email: 'kellyr@example.com', phone: '7412589630', address: '741 Poplar St', preferedRange: 20.0, createdAt: '2023-01-01T00:00:00Z', updatedAt: '2023-01-01T00:00:00Z'})
ON CREATE SET
    u12.numOfBookings = 0,
    u12.totalSpent = 0.0
MERGE (u13:User {id: 13, name: 'Larry Silver', email: 'larrys@example.com', phone: '3698521470', address: '369 Linden St', preferedRange: 25.0, createdAt: '2023-01-01T00:00:00Z', updatedAt: '2023-01-01T00:00:00Z'})
ON CREATE SET
    u13.numOfBookings = 0,
    u13.totalSpent = 0.0
MERGE (u14:User {id: 14, name: 'Monica Gold', email: 'monicag@example.com', phone: '2589631470', address: '258 Ash St', preferedRange: 30.0, createdAt: '2023-01-01T00:00:00Z', updatedAt: '2023-01-01T00:00:00Z'})
ON CREATE SET
    u14.numOfBookings = 0,
    u14.totalSpent = 0.0
MERGE (u15:User {id: 15, name: 'Nathan Bronze', email: 'nathanb@example.com', phone: '1472583690', address: '147 Beech St', preferedRange: 35.0, createdAt: '2023-01-01T00:00:00Z', updatedAt: '2023-01-01T00:00:00Z'})
ON CREATE SET
    u15.numOfBookings = 0,
    u15.totalSpent = 0.0
MERGE (u16:User {id: 16, name: 'Olivia Turquoise', email: 'oliviat@example.com', phone: '3697412580', address: '369 Alder St', preferedRange: 40.0, createdAt: '2023-01-01T00:00:00Z', updatedAt: '2023-01-01T00:00:00Z'})
ON CREATE SET
    u16.numOfBookings = 0,
    u16.totalSpent = 0.0
MERGE (u17:User {id: 17, name: 'Quincy Navy', email: 'quincyn@example.com', phone: '1473692580', address: '147 Sequoia St', preferedRange: 50.0, createdAt: '2023-01-01T00:00:00Z', updatedAt: '2023-01-01T00:00:00Z'})
ON CREATE SET
    u17.numOfBookings = 0,
    u17.totalSpent = 0.0
MERGE (u18:User {id: 18, name: 'Rachel Teal', email: 'rachelt@example.com', phone: '9631472580', address: '963 Maple St', preferedRange: 10.0, createdAt: '2023-01-01T00:00:00Z', updatedAt: '2023-01-01T00:00:00Z'})
ON CREATE SET
    u18.numOfBookings = 0,
    u18.totalSpent = 0.0
MERGE (u19:User {id: 19, name: 'Rachel Green', email: 'rachelg@example.com', phone: '9631472580', address: '963 Maple St', preferedRange: 10.0, createdAt: '2023-01-01T00:00:00Z', updatedAt: '2023-01-01T00:00:00Z'})
ON CREATE SET
    u19.numOfBookings = 0,
    u19.totalSpent = 0.0
MERGE (u20:User {id: 20, name: 'Ross Geller', email: 'rossg@example.com', phone: '9631472580', address: '963 Maple St', preferedRange: 10.0, createdAt: '2023-01-01T00:00:00Z', updatedAt: '2023-01-01T00:00:00Z'})
ON CREATE SET
    u20.numOfBookings = 0,
    u20.totalSpent = 0.0


// Add Space Nodes
MERGE (s1:Space {id: 1, name: 'Space A', address: '123 Space St', size: 100.0, numRooms: 3, hourlyRate: 20.0, halfdayRate: 100.0, fulldayRate: 180.0, rentFrom: '08:00:00', rentTo: '17:00:00', status: 'open', remark: 'Great space for events',rating: 0, createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH s1
MATCH (u:User {id: 4})
SET u:Owner
MERGE (u)-[:OWNS]->(s1)
MERGE (l1:Location {name: 'Downtown'})
MERGE (s1)-[:LOCATED_IN]->(l1)
MERGE (pr1:PriceRange {minPrice: s1.hourlyRate - (s1.hourlyRate % 5), 
                        maxPrice: s1.hourlyRate - (s1.hourlyRate % 5) + 5})
ON CREATE SET
    pr1.numOfBookings = 0,
    pr1.totalSpent = 0.0
MERGE (s1)-[:IN_PRICE_RANGE]->(pr1)

MERGE (s2:Space {id: 2, name: 'Space B', address: '456 Space St', size: 200.0, numRooms: 5, hourlyRate: 10.0, halfdayRate: 100.0, fulldayRate: 150.0, rentFrom: '08:00:00', rentTo: '17:00:00', status: 'open', remark: 'Spacious and modern',rating: 0, createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH s2
MATCH (u:User {id: 5})
SET u:Owner
MERGE (u)-[:OWNS]->(s2)
MERGE (l2:Location {name: 'Uptown'})
MERGE (s2)-[:LOCATED_IN]->(l2)
MERGE (pr2:PriceRange {minPrice: s2.hourlyRate - (s2.hourlyRate % 5), 
                        maxPrice: s2.hourlyRate - (s2.hourlyRate % 5) + 5})
ON CREATE SET
    pr2.numOfBookings = 0,
    pr2.totalSpent = 0.0
MERGE (s2)-[:IN_PRICE_RANGE]->(pr2)

MERGE (s3:Space {id: 3, name: 'Space C', address: '789 Space St', size: 150.0, numRooms: 4, hourlyRate: 25.0, halfdayRate: 130.0, fulldayRate: 240.0, rentFrom: '08:00:00', rentTo: '17:00:00', status: 'open', remark: 'Ideal for meetings',rating: 0, createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH s3
MATCH (u:User {id: 6})
SET u:Owner
MERGE (u)-[:OWNS]->(s3)
MERGE (l3:Location {name: 'Midtown'})
MERGE (s3)-[:LOCATED_IN]->(l3)
MERGE (pr3:PriceRange {minPrice: s3.hourlyRate - (s3.hourlyRate % 5), 
                        maxPrice: s3.hourlyRate - (s3.hourlyRate % 5) + 5})
ON CREATE SET
    pr3.numOfBookings = 0,
    pr3.totalSpent = 0.0
MERGE (s3)-[:IN_PRICE_RANGE]->(pr3)

MERGE (s4:Space {id: 4, name: 'Space D', address: '321 Space St', size: 120.0, numRooms: 3, hourlyRate: 5.0, halfdayRate: 40.0, fulldayRate: 70.0, rentFrom: '08:00:00', rentTo: '17:00:00', status: 'open', remark: 'Cozy and comfortable',rating: 0, createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH s4
MATCH (u:User {id: 4})
SET u:Owner
MERGE (u)-[:OWNS]->(s4)
MERGE (l4:Location {name: 'Suburb'})
MERGE (s4)-[:LOCATED_IN]->(l4)
MERGE (pr4:PriceRange {minPrice: s4.hourlyRate - (s4.hourlyRate % 5), 
                        maxPrice: s4.hourlyRate - (s4.hourlyRate % 5) + 5})
ON CREATE SET
    pr4.numOfBookings = 0,
    pr4.totalSpent = 0.0
MERGE (s4)-[:IN_PRICE_RANGE]->(pr4)

MERGE (s5:Space {id: 5, name: 'Space E', address: '654 Space St', size: 180.0, numRooms: 4, hourlyRate: 28.0, halfdayRate: 140.0, fulldayRate: 250.0, rentFrom: '08:00:00', rentTo: '17:00:00', status: 'open', remark: 'Luxury space',rating: 0, createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH s5
MATCH (u:User {id: 5})
SET u:Owner
MERGE (u)-[:OWNS]->(s5)
MERGE (l5:Location {name: 'City Center'})
MERGE (s5)-[:LOCATED_IN]->(l5)
MERGE (pr5:PriceRange {minPrice: s5.hourlyRate - (s5.hourlyRate % 5), 
                        maxPrice: s5.hourlyRate - (s5.hourlyRate % 5) + 5})
ON CREATE SET
    pr5.numOfBookings = 0,
    pr5.totalSpent = 0.0
MERGE (s5)-[:IN_PRICE_RANGE]->(pr5)

MERGE (s6:Space {id: 6, name: 'Space F', address: '987 Space St', size: 130.0, numRooms: 3, hourlyRate: 22.0, halfdayRate: 110.0, fulldayRate: 200.0, rentFrom: '08:00:00', rentTo: '17:00:00', status: 'open', remark: 'Historic charm',rating: 0, createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH s6
MATCH (u:User {id: 6})
SET u:Owner
MERGE (u)-[:OWNS]->(s6)
MERGE (l6:Location {name: 'Old Town'})
MERGE (s6)-[:LOCATED_IN]->(l6)
MERGE (pr6:PriceRange {minPrice: s6.hourlyRate - (s6.hourlyRate % 5), 
                        maxPrice: s6.hourlyRate - (s6.hourlyRate % 5) + 5})
ON CREATE SET
    pr6.numOfBookings = 0,
    pr6.totalSpent = 0.0
MERGE (s6)-[:IN_PRICE_RANGE]->(pr6)
WITH s6
MATCH (u:User {id: 6})
SET u:Owner
MERGE (u)-[:OWNS]->(s6)
MERGE (l6:Location {name: 'Old Town'})
MERGE (s6)-[:LOCATED_IN]->(l6)

MERGE (s7:Space {id: 7, name: 'Space G', address: '258 Space St', size: 160.0, numRooms: 4, hourlyRate: 26.0, halfdayRate: 135.0, fulldayRate: 230.0, rentFrom: '08:00:00', rentTo: '17:00:00', status: 'open', remark: 'Modern amenities',rating: 0, createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH s7
MATCH (u:User {id: 4})
SET u:Owner
MERGE (u)-[:OWNS]->(s7)
MERGE (l7:Location {name: 'New Town'})
MERGE (s7)-[:LOCATED_IN]->(l7)
MERGE (pr7:PriceRange {minPrice: s7.hourlyRate - (s7.hourlyRate % 5), 
                        maxPrice: s7.hourlyRate - (s7.hourlyRate % 5) + 5})
ON CREATE SET
    pr7.numOfBookings = 0,
    pr7.totalSpent = 0.0
MERGE (s7)-[:IN_PRICE_RANGE]->(pr7)

MERGE (s8:Space {id: 8, name: 'Space H', address: '369 Space St', size: 140.0, numRooms: 3, hourlyRate: 24.0, halfdayRate: 120.0, fulldayRate: 215.0, rentFrom: '08:00:00', rentTo: '17:00:00', status: 'open', remark: 'Quiet and peaceful',rating: 0, createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH s8
MATCH (u:User {id: 5})
SET u:Owner
MERGE (u)-[:OWNS]->(s8)
MERGE (l8:Location {name: 'East Side'})
MERGE (s8)-[:LOCATED_IN]->(l8)
MERGE (pr8:PriceRange {minPrice: s8.hourlyRate - (s8.hourlyRate % 5), 
                        maxPrice: s8.hourlyRate - (s8.hourlyRate % 5) + 5})
ON CREATE SET
    pr8.numOfBookings = 0,
    pr8.totalSpent = 0.0
MERGE (s8)-[:IN_PRICE_RANGE]->(pr8)

MERGE (s9:Space {id: 9, name: 'Space I', address: '741 Space St', size: 170.0, numRooms: 4, hourlyRate: 27.0, halfdayRate: 135.0, fulldayRate: 230.0, rentFrom: '08:00:00', rentTo: '17:00:00', status: 'open', remark: 'Spacious',rating: 0, createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH s9
MATCH (u:User {id: 6})
SET u:Owner
MERGE (u)-[:OWNS]->(s9)
MERGE (l9:Location {name: 'West Side'})
MERGE (s9)-[:LOCATED_IN]->(l9)
MERGE (pr9:PriceRange {minPrice: s9.hourlyRate - (s9.hourlyRate % 5), 
                        maxPrice: s9.hourlyRate - (s9.hourlyRate % 5) + 5})
ON CREATE SET
    pr9.numOfBookings = 0,
    pr9.totalSpent = 0.0
MERGE (s9)-[:IN_PRICE_RANGE]->(pr9)

MERGE (s10:Space {id: 10, name: 'Space J', address: '852 Space St', size: 110.0, numRooms: 3, hourlyRate: 15.0, halfdayRate: 140.0, fulldayRate: 210.0, rentFrom: '08:00:00', rentTo: '17:00:00', status: 'open', remark: 'Affordable and practical',rating: 0, createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH s10
MATCH (u:User {id: 4})
SET u:Owner
MERGE (u)-[:OWNS]->(s10)
MERGE (l10:Location {name: 'South Side'})
MERGE (s10)-[:LOCATED_IN]->(l10)
MERGE (pr10:PriceRange {minPrice: s10.hourlyRate - (s10.hourlyRate % 5), 
                        maxPrice: s10.hourlyRate - (s10.hourlyRate % 5) + 5})
ON CREATE SET
    pr10.numOfBookings = 0,
    pr10.totalSpent = 0.0
MERGE (s10)-[:IN_PRICE_RANGE]->(pr10)

MERGE (s11:Space {id: 11, name: 'Space K', address: '963 Space St', size: 120.0, numRooms: 3, hourlyRate: 30.0, halfdayRate: 250.0, fulldayRate: 450.0, rentFrom: '08:00:00', rentTo: '17:00:00', status: 'open', remark: 'Spacious event space',rating: 0, createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH s11
MATCH (u:User {id: 5})
SET u:Owner
MERGE (u)-[:OWNS]->(s11)
MERGE (l11:Location {name: 'North Side'})
MERGE (s11)-[:LOCATED_IN]->(l11)
MERGE (pr11:PriceRange {minPrice: s11.hourlyRate - (s11.hourlyRate % 5), 
                        maxPrice: s11.hourlyRate - (s11.hourlyRate % 5) + 5})
ON CREATE SET
    pr11.numOfBookings = 0,
    pr11.totalSpent = 0.0
MERGE (s11)-[:IN_PRICE_RANGE]->(pr11)

MERGE (s12:Space {id: 12, name: 'Space L', address: '852 Space St', size: 180.0, numRooms: 4, hourlyRate: 35.0, halfdayRate: 250.0, fulldayRate: 450.0, rentFrom: '08:00:00', rentTo: '17:00:00', status: 'open', remark: 'Modern and elegant',rating: 0, createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH s12
MATCH (u:User {id: 6})
SET u:Owner
MERGE (u)-[:OWNS]->(s12)
MERGE (l12:Location {name: 'Central Park'})
MERGE (s12)-[:LOCATED_IN]->(l12)
MERGE (pr12:PriceRange {minPrice: s12.hourlyRate - (s12.hourlyRate % 5), 
                        maxPrice: s12.hourlyRate - (s12.hourlyRate % 5) + 5})
ON CREATE SET
    pr12.numOfBookings = 0,
    pr12.totalSpent = 0.0
MERGE (s12)-[:IN_PRICE_RANGE]->(pr12)

MERGE (s13:Space {id: 13, name: 'Space M', address: '987 Space St', size: 130.0, numRooms: 3, hourlyRate: 22.0, halfdayRate: 110.0, fulldayRate: 200.0, rentFrom: '08:00:00', rentTo: '17:00:00', status: 'open', remark: 'Historic charm',rating: 0, createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH s13
MATCH (u:User {id: 4})
SET u:Owner
MERGE (u)-[:OWNS]->(s13)
MERGE (l13:Location {name: 'Old Town'})
MERGE (s13)-[:LOCATED_IN]->(l13)
MERGE (pr13:PriceRange {minPrice: s13.hourlyRate - (s13.hourlyRate % 5), 
                        maxPrice: s13.hourlyRate - (s13.hourlyRate % 5) + 5})
ON CREATE SET
    pr13.numOfBookings = 0,
    pr13.totalSpent = 0.0
MERGE (s13)-[:IN_PRICE_RANGE]->(pr13)

MERGE (s14:Space {id: 14, name: 'Space N', address: '369 Space St', size: 140.0, numRooms: 4, hourlyRate: 24.0, halfdayRate: 120.0, fulldayRate: 215.0, rentFrom: '08:00:00', rentTo: '17:00:00', status: 'open', remark: 'High-tech facilities',rating: 0, createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH s14
MATCH (u:User {id: 5})
SET u:Owner
MERGE (u)-[:OWNS]->(s14)
MERGE (l14:Location {name: 'Tech Hub'})
MERGE (s14)-[:LOCATED_IN]->(l14)
MERGE (pr14:PriceRange {minPrice: s14.hourlyRate - (s14.hourlyRate % 5), 
                        maxPrice: s14.hourlyRate - (s14.hourlyRate % 5) + 5})
ON CREATE SET
    pr14.numOfBookings = 0,
    pr14.totalSpent = 0.0
MERGE (s14)-[:IN_PRICE_RANGE]->(pr14)

MERGE (s15:Space {id: 15, name: 'Space O', address: '258 Space St', size: 130.0, numRooms: 3, hourlyRate: 22.0, halfdayRate: 110.0, fulldayRate: 200.0, rentFrom: '08:00:00', rentTo: '17:00:00', status: 'open', remark: 'Eco-friendly space',rating: 0, createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH s15
MATCH (u:User {id: 6})
SET u:Owner
MERGE (u)-[:OWNS]->(s15)
MERGE (l15:Location {name: 'Greenfield'})
MERGE (s15)-[:LOCATED_IN]->(l15)
MERGE (pr15:PriceRange {minPrice: s15.hourlyRate - (s15.hourlyRate % 5), 
                        maxPrice: s15.hourlyRate - (s15.hourlyRate % 5) + 5})
ON CREATE SET
    pr15.numOfBookings = 0,
    pr15.totalSpent = 0.0
MERGE (s15)-[:IN_PRICE_RANGE]->(pr15)

MERGE (s16:Space {id: 16, name: 'Space P', address: '741 Space St', size: 110.0, numRooms: 3, hourlyRate: 15.0, halfdayRate: 100.0, fulldayRate: 180.0, rentFrom: '08:00:00', rentTo: '17:00:00', status: 'open', remark: 'Industrial space',rating: 0, createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH s16
MATCH (u:User {id: 4})
SET u:Owner
MERGE (u)-[:OWNS]->(s16)
MERGE (l16:Location {name: 'Industrial Park'})
MERGE (s16)-[:LOCATED_IN]->(l16)
MERGE (pr16:PriceRange {minPrice: s16.hourlyRate - (s16.hourlyRate % 5), 
                        maxPrice: s16.hourlyRate - (s16.hourlyRate % 5) + 5})
ON CREATE SET
    pr16.numOfBookings = 0,
    pr16.totalSpent = 0.0
MERGE (s16)-[:IN_PRICE_RANGE]->(pr16)

MERGE (s17:Space {id: 17, name: 'Space Q', address: '369 Space St', size: 120.0, numRooms: 4, hourlyRate: 26.0, halfdayRate: 135.0, fulldayRate: 230.0, rentFrom: '08:00:00', rentTo: '17:00:00', status: 'open', remark: 'Cultural space',rating: 0, createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH s17
MATCH (u:User {id: 5})
SET u:Owner
MERGE (u)-[:OWNS]->(s17)
MERGE (l17:Location {name: 'Cultural District'})
MERGE (s17)-[:LOCATED_IN]->(l17)
MERGE (pr17:PriceRange {minPrice: s17.hourlyRate - (s17.hourlyRate % 5), 
                        maxPrice: s17.hourlyRate - (s17.hourlyRate % 5) + 5})
ON CREATE SET
    pr17.numOfBookings = 0,
    pr17.totalSpent = 0.0
MERGE (s17)-[:IN_PRICE_RANGE]->(pr17)

MERGE (s18:Space {id: 18, name: 'Space R', address: '852 Space St', size: 190.0, numRooms: 5, hourlyRate: 27.0, halfdayRate: 135.0, fulldayRate: 230.0, rentFrom: '08:00:00', rentTo: '17:00:00', status: 'open', remark: 'Ideal for workshops',rating: 0, createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH s18
MATCH (u:User {id: 6})
SET u:Owner
MERGE (u)-[:OWNS]->(s18)
MERGE (l18:Location {name: 'Uptown'})
MERGE (s18)-[:LOCATED_IN]->(l18)
MERGE (pr18:PriceRange {minPrice: s18.hourlyRate - (s18.hourlyRate % 5), 
                        maxPrice: s18.hourlyRate - (s18.hourlyRate % 5) + 5})
ON CREATE SET
    pr18.numOfBookings = 0,
    pr18.totalSpent = 0.0
MERGE (s18)-[:IN_PRICE_RANGE]->(pr18)

MERGE (s19:Space {id: 19, name: 'Space S', address: '963 Space St', size: 170.0, numRooms: 4, hourlyRate: 29.0, halfdayRate: 135.0, fulldayRate: 230.0, rentFrom: '08:00:00', rentTo: '17:00:00', status: 'open', remark: 'Business-friendly space',rating: 0, createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH s19
MATCH (u:User {id: 7})
SET u:Owner
MERGE (u)-[:OWNS]->(s19)
MERGE (l19:Location {name: 'Downtown'})
MERGE (s19)-[:LOCATED_IN]->(l19)
MERGE (pr19:PriceRange {minPrice: s19.hourlyRate - (s19.hourlyRate % 5), 
                        maxPrice: s19.hourlyRate - (s19.hourlyRate % 5) + 5})
ON CREATE SET
    pr19.numOfBookings = 0,
    pr19.totalSpent = 0.0
MERGE (s19)-[:IN_PRICE_RANGE]->(pr19)

MERGE (s20:Space {id: 20, name: 'Space T', address: '123 Space St', size: 150.0, numRooms: 4, hourlyRate: 28.0, halfdayRate: 135.0, fulldayRate: 230.0, rentFrom: '08:00:00', rentTo: '17:00:00', status: 'open', remark: 'Medical space',rating: 0, createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH s20
MATCH (u:User {id: 4})
SET u:Owner
MERGE (u)-[:OWNS]->(s20)
MERGE (l20:Location {name: 'Medical District'})
MERGE (s20)-[:LOCATED_IN]->(l20)
MERGE (pr20:PriceRange {minPrice: s20.hourlyRate - (s20.hourlyRate % 5), 
                        maxPrice: s20.hourlyRate - (s20.hourlyRate % 5) + 5})
ON CREATE SET
    pr20.numOfBookings = 0,
    pr20.totalSpent = 0.0
MERGE (s20)-[:IN_PRICE_RANGE]->(pr20)

// add feedback nodes
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

MERGE (f2:Feedback {reviews: 'It is fine'})
WITH f2
MATCH (u2:User {id: 1})
MERGE (u2)-[:GIVES_FEEDBACK]->(f2)
WITH f2,u2
MATCH (s2:Space {id: 2})
MERGE (f2)-[:FEEDBACK_FOR]->(s2)
MERGE (r2:Rating {value: 3})
MERGE (f2)-[:RATING_GIVEN]->(r2)
MERGE (r2)-[:RATING_FOR]->(s2)
SET s2.rating = (s2.rating + r2.value) / 2

MERGE (f3:Feedback {reviews: 'Spacious and modern, perfect for our event.'})
WITH f3
MATCH (u3:User {id: 2})
MERGE (u3)-[:GIVES_FEEDBACK]->(f3)
WITH f3,u3
MATCH (s3:Space {id: 2})
MERGE (f3)-[:FEEDBACK_FOR]->(s3)
MERGE (r3:Rating {value: 4})
MERGE (f3)-[:RATING_GIVEN]->(r3)
MERGE (r3)-[:RATING_FOR]->(s3)
SET s3.rating = (s3.rating + r3.value) / 2

MERGE (f4:Feedback {reviews: 'This is bad room'})
WITH f4
MATCH (u4:User {id: 1})
MERGE (u4)-[:GIVES_FEEDBACK]->(f4)
WITH f4,u4
MATCH (s4:Space {id: 3})
MERGE (f4)-[:FEEDBACK_FOR]->(s4)
MERGE (r4:Rating {value: 2})
MERGE (f4)-[:RATING_GIVEN]->(r4)
MERGE (r4)-[:RATING_FOR]->(s4)
SET s4.rating = (s4.rating + r4.value) / 2

MERGE (f5:Feedback {reviews: 'This is fine'})
WITH f5
MATCH (u5:User {id: 2})
MERGE (u5)-[:GIVES_FEEDBACK]->(f5)
WITH f5,u5
MATCH (s5:Space {id: 3})
MERGE (f5)-[:FEEDBACK_FOR]->(s5)
MERGE (r5:Rating {value: 2})
MERGE (f5)-[:RATING_GIVEN]->(r5)
MERGE (r5)-[:RATING_FOR]->(s5)
SET s5.rating = (s5.rating + r5.value) / 2  

MERGE (f6:Feedback {reviews: 'Ideal for meetings, had a great experience.'})
WITH f6
MATCH (u6:User {id: 3})
MERGE (u6)-[:GIVES_FEEDBACK]->(f6)
WITH f6,u6
MATCH (s6:Space {id: 3})
MERGE (f6)-[:FEEDBACK_FOR]->(s6)
MERGE (r6:Rating {value: 4})
MERGE (f6)-[:RATING_GIVEN]->(r6)
MERGE (r6)-[:RATING_FOR]->(s6)
SET s6.rating = (s6.rating + r6.value) / 2

MERGE (f7:Feedback {reviews: 'Cozy and comfortable, highly recommend.'})
WITH f7
MATCH (u7:User {id: 4})
MERGE (u7)-[:GIVES_FEEDBACK]->(f7)
WITH f7,u7
MATCH (s7:Space {id: 4})
MERGE (f7)-[:FEEDBACK_FOR]->(s7)
MERGE (r7:Rating {value: 4})
MERGE (f7)-[:RATING_GIVEN]->(r7)
MERGE (r7)-[:RATING_FOR]->(s7)
SET s7.rating = (s7.rating + r7.value) / 2

MERGE (f8:Feedback {reviews: 'Luxury space, worth every penny.'})
WITH f8
MATCH (u8:User {id: 4})
MERGE (u8)-[:GIVES_FEEDBACK]->(f8)
WITH f8,u8
MATCH (s8:Space {id: 4})
MERGE (f8)-[:FEEDBACK_FOR]->(s8)
MERGE (r8:Rating {value: 4})
MERGE (f8)-[:RATING_GIVEN]->(r8)
MERGE (r8)-[:RATING_FOR]->(s8)
SET s8.rating = (s8.rating + r8.value) / 2

MERGE (f9:Feedback {reviews: 'Historic charm, very unique.'})
WITH f9
MATCH (u9:User {id: 5})
MERGE (u9)-[:GIVES_FEEDBACK]->(f9)
WITH f9,u9
MATCH (s9:Space {id: 4})
MERGE (f9)-[:FEEDBACK_FOR]->(s9)
MERGE (r9:Rating {value: 4})
MERGE (f9)-[:RATING_GIVEN]->(r9)
MERGE (r9)-[:RATING_FOR]->(s9)
SET s9.rating = (s9.rating + r9.value) / 2

MERGE (f10:Feedback {reviews: 'Modern amenities, very convenient.'})
WITH f10
MATCH (u10:User {id: 5})
MERGE (u10)-[:GIVES_FEEDBACK]->(f10)
WITH f10,u10
MATCH (s10:Space {id: 4})
MERGE (f10)-[:FEEDBACK_FOR]->(s10)
MERGE (r10:Rating {value: 4})
MERGE (f10)-[:RATING_GIVEN]->(r10)
MERGE (r10)-[:RATING_FOR]->(s10)
SET s10.rating = (s10.rating + r10.value) / 2

MERGE (f11:Feedback {reviews: 'Quiet and peaceful, loved it.'})
WITH f11
MATCH (u11:User {id: 6})
MERGE (u11)-[:GIVES_FEEDBACK]->(f11)
WITH f11,u11
MATCH (s11:Space {id: 4})
MERGE (f11)-[:FEEDBACK_FOR]->(s11)
MERGE (r11:Rating {value: 3})
MERGE (f11)-[:RATING_GIVEN]->(r11)
MERGE (r11)-[:RATING_FOR]->(s11)
SET s11.rating = (s11.rating + r11.value) / 2

MERGE (f12:Feedback {reviews: 'Spacious and comfortable.'})
WITH f12
MATCH (u12:User {id: 6})
MERGE (u12)-[:GIVES_FEEDBACK]->(f12)
WITH f12,u12
MATCH (s12:Space {id: 4})
MERGE (f12)-[:FEEDBACK_FOR]->(s12)
MERGE (r12:Rating {value: 4})
MERGE (f12)-[:RATING_GIVEN]->(r12)
MERGE (r12)-[:RATING_FOR]->(s12)
SET s12.rating = (s12.rating + r12.value) / 2
  
MERGE (f13:Feedback {reviews: 'Affordable and practical, great value.'})
WITH f13
MATCH (u13:User {id: 7})
MERGE (u13)-[:GIVES_FEEDBACK]->(f13)
WITH f13,u13
MATCH (s13:Space {id: 4})
MERGE (f13)-[:FEEDBACK_FOR]->(s13)
MERGE (r13:Rating {value: 5})
MERGE (f13)-[:RATING_GIVEN]->(r13)
MERGE (r13)-[:RATING_FOR]->(s13)
SET s13.rating = (s13.rating + r13.value) / 2

MERGE (f14:Feedback {reviews: 'Spacious event space, highly recommend.'})
WITH f14
MATCH (u14:User {id: 7})
MERGE (u14)-[:GIVES_FEEDBACK]->(f14)
WITH f14,u14
MATCH (s14:Space {id: 4})
MERGE (f14)-[:FEEDBACK_FOR]->(s14)
MERGE (r14:Rating {value: 5})
MERGE (f14)-[:RATING_GIVEN]->(r14)
MERGE (r14)-[:RATING_FOR]->(s14)
SET s14.rating = (s14.rating + r14.value) / 2

MERGE (f15:Feedback {reviews: 'Modern and elegant, perfect for our needs.'})
WITH f15
MATCH (u15:User {id: 8})
MERGE (u15)-[:GIVES_FEEDBACK]->(f15)
WITH f15,u15
MATCH (s15:Space {id: 4})
MERGE (f15)-[:FEEDBACK_FOR]->(s15)
MERGE (r15:Rating {value: 5})
MERGE (f15)-[:RATING_GIVEN]->(r15)
MERGE (r15)-[:RATING_FOR]->(s15)
SET s15.rating = (s15.rating + r15.value) / 2
  
MERGE (f16:Feedback {reviews: 'Perfect for conferences, very satisfied.'})
WITH f16
MATCH (u16:User {id: 8})
MERGE (u16)-[:GIVES_FEEDBACK]->(f16)
WITH f16,u16
MATCH (s16:Space {id: 4})
MERGE (f16)-[:FEEDBACK_FOR]->(s16)
MERGE (r16:Rating {value: 2})
MERGE (f16)-[:RATING_GIVEN]->(r16)
MERGE (r16)-[:RATING_FOR]->(s16)
SET s16.rating = (s16.rating + r16.value) / 2

MERGE (f17:Feedback {reviews: 'High-tech facilities, great experience.'})
WITH f17
MATCH (u17:User {id: 9})
MERGE (u17)-[:GIVES_FEEDBACK]->(f17)
WITH f17,u17
MATCH (s17:Space {id: 4})
MERGE (f17)-[:FEEDBACK_FOR]->(s17)
MERGE (r17:Rating {value: 4})
MERGE (f17)-[:RATING_GIVEN]->(r17)
MERGE (r17)-[:RATING_FOR]->(s17)
SET s17.rating = (s17.rating + r17.value) / 2

MERGE (f18:Feedback {reviews: 'Eco-friendly space, very impressive.'})
WITH f18
MATCH (u18:User {id: 9})
MERGE (u18)-[:GIVES_FEEDBACK]->(f18)
WITH f18,u18
MATCH (s18:Space {id: 4})
MERGE (f18)-[:FEEDBACK_FOR]->(s18)
MERGE (r18:Rating {value: 3})
MERGE (f18)-[:RATING_GIVEN]->(r18)
MERGE (r18)-[:RATING_FOR]->(s18)
SET s18.rating = (s18.rating + r18.value) / 2

MERGE (f19:Feedback {reviews: 'Beautiful river view, loved it.'})
WITH f19
MATCH (u19:User {id: 10})
MERGE (u19)-[:GIVES_FEEDBACK]->(f19)
WITH f19,u19
MATCH (s19:Space {id: 4})
MERGE (f19)-[:FEEDBACK_FOR]->(s19)
MERGE (r19:Rating {value: 2})
MERGE (f19)-[:RATING_GIVEN]->(r19)
MERGE (r19)-[:RATING_FOR]->(s19)
SET s19.rating = (s19.rating + r19.value) / 2

MERGE (f20:Feedback {reviews: 'Central location, very convenient.'})
WITH f20
MATCH (u20:User {id: 10})
MERGE (u20)-[:GIVES_FEEDBACK]->(f20)
WITH f20,u20
MATCH (s20:Space {id: 4})
MERGE (f20)-[:FEEDBACK_FOR]->(s20)
MERGE (r20:Rating {value: 5})
MERGE (f20)-[:RATING_GIVEN]->(r20)
MERGE (r20)-[:RATING_FOR]->(s20)
SET s20.rating = (s20.rating + r20.value) / 2

// Add booking nodes
MERGE (b1:Booking {id: 1, bookingDate: '2025-01-10', remark: 'First booking', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH b1
MATCH (u1:User {id: 1})
MERGE (u1)-[:BOOKED_BY]->(b1)
WITH b1, u1
MATCH (s1:Space {id: 1})
MERGE (b1)-[:BOOKED_FOR]->(s1)
MERGE (t1:Timeslot {slot: '09_10'})
MERGE (b1)-[:HOUR_BOOKED_FOR]->(t1)
MERGE (t2:Timeslot {slot: '10_11'})
MERGE (b1)-[:HOUR_BOOKED_FOR]->(t2)
WITH b1, u1, s1
// Count relationships using pattern comprehension
SET b1.totalDuration = SIZE([(b1)-[:HOUR_BOOKED_FOR]->() | 1])
// Fix CASE logic (use totalDuration, not spacePrice)
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
// Continue with remaining relationships
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
MERGE (b1)-[:DAY_OF_THE_WEEK]->(d1)
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
MERGE (b1)-[:MONTH]->(m1)
MERGE (y1:Year {year: date(b1.bookingDate).year})
ON CREATE SET
    y1.numOfBookings = 0,
    y1.totalSpent = 0.0
MERGE (b1)-[:YEAR]->(y1)
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
MERGE (b1)-[:SEASON]->(se1)
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
// add payment nodes
MERGE (p1:Payment {id: 1, amount: b1.totalPrice, transacId: 'TXN12345', bank: 'Bank A', status: 'completed', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
MERGE (p1)-[:PAID_FOR]->(b1)
MERGE (u1)-[:MADE_PAYMENT]->(p1)
SET b1:Paid

MERGE (b2:Booking {id: 2, bookingDate: '2025-02-15', remark: 'Second booking', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH b2
MATCH (u2:User {id: 2})
MERGE (u2)-[:BOOKED_BY]->(b2)
WITH b2, u2
MATCH (s2:Space {id: 2})
MERGE (b2)-[:BOOKED_FOR]->(s2)
MERGE (t1:Timeslot {slot: '10_11'})
MERGE (b2)-[:HOUR_BOOKED_FOR]->(t1)
MERGE (t2:Timeslot {slot: '11_12'})
MERGE (b2)-[:HOUR_BOOKED_FOR]->(t2)
MERGE (t3:Timeslot {slot: '12_13'})
MERGE (b2)-[:HOUR_BOOKED_FOR]->(t3)
WITH b2, u2, s2
// Count relationships using pattern comprehension
SET b2.totalDuration = SIZE([(b2)-[:HOUR_BOOKED_FOR]->() | 1])
// Fix CASE logic (use totalDuration, not spacePrice)
SET b2.spacePrice = CASE
  WHEN b2.totalDuration < 12 THEN s2.hourlyRate * b2.totalDuration
  WHEN b2.totalDuration = 12 THEN s2.halfdayRate
  WHEN b2.totalDuration = 24 THEN s2.fulldayRate
  ELSE s2.halfdayRate + (s2.hourlyRate * (b2.totalDuration - 12))
END
SET b2.sysFee = b2.spacePrice * 0.03
SET b2.totalPrice = b2.spacePrice + b2.sysFee
SET u2.numOfBookings = u2.numOfBookings + 1
SET u2.totalSpent = u2.totalSpent + b2.totalPrice
SET u2:Customer
// Continue with remaining relationships
MERGE (d2:Day {day: 
    CASE date(b2.bookingDate).dayOfWeek
        WHEN 1 THEN 'Monday'
        WHEN 2 THEN 'Tuesday'
        WHEN 3 THEN 'Wednesday'
        WHEN 4 THEN 'Thursday'
        WHEN 5 THEN 'Friday'
        WHEN 6 THEN 'Saturday'
        ELSE 'Sunday'
    END})
ON CREATE SET
    d2.numOfBookings = 0,
    d2.totalSpent = 0.0
MERGE (b2)-[:DAY_OF_THE_WEEK]->(d2)
MERGE (m2:Month {month: 
    CASE date(b2.bookingDate).month
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
    END, year: date(b2.bookingDate).year, numMonth: date(b2.bookingDate).month})
ON CREATE SET
    m2.numOfBookings = 0,
    m2.totalSpent = 0.0
MERGE (b2)-[:MONTH]->(m2)
MERGE (y2:Year {year: date(b2.bookingDate).year})
ON CREATE SET
    y2.numOfBookings = 0,
    y2.totalSpent = 0.0
MERGE (b2)-[:YEAR]->(y2)
MERGE (y2)-[:YEAR_OF]->(m2)
MERGE (se2:Season {season: 
  CASE 
    WHEN date(b2.bookingDate).month IN [1,2,3] THEN 'Winter'
    WHEN date(b2.bookingDate).month IN [4,5,6] THEN 'Spring'
    WHEN date(b2.bookingDate).month IN [7,8,9] THEN 'Summer'
    ELSE 'Fall'
  END})
ON CREATE SET
    se2.numOfBookings = 0,
    se2.totalSpent = 0.0
MERGE (b2)-[:SEASON]->(se2)
SET d2.numOfBookings = d2.numOfBookings + 1
SET d2.totalSpent = d2.totalSpent + b2.totalPrice
SET m2.numOfBookings = m2.numOfBookings + 1
SET m2.totalSpent = m2.totalSpent + b2.totalPrice
SET y2.numOfBookings = y2.numOfBookings + 1
SET y2.totalSpent = y2.totalSpent + b2.totalPrice
SET se2.numOfBookings = se2.numOfBookings + 1
SET se2.totalSpent = se2.totalSpent + b2.totalPrice
WITH b2, u2, s2
MATCH (s2)-[:IN_PRICE_RANGE]->(pr2)
SET pr2.numOfBookings = pr2.numOfBookings + 1
SET pr2.totalSpent = pr2.totalSpent + b2.totalPrice
// add payment nodes
MERGE (p2:Payment {id: 2, amount: b2.totalPrice, transacId: 'TXN12346', bank: 'Bank B', status: 'completed', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
MERGE (p2)-[:PAID_FOR]->(b2)
MERGE (u2)-[:MADE_PAYMENT]->(p2)
SET b2:Paid

MERGE (b3:Booking {id: 3, bookingDate: '2025-03-25', remark: 'Second booking', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH b3
MATCH (u3:User {id: 3})
MERGE (u3)-[:BOOKED_BY]->(b3)
WITH b3, u3
MATCH (s3:Space {id: 3})
MERGE (b3)-[:BOOKED_FOR]->(s3)
MERGE (t1:Timeslot {slot: '01_02'})
MERGE (b3)-[:HOUR_BOOKED_FOR]->(t1)
MERGE (t2:Timeslot {slot: '02_03'})
MERGE (b3)-[:HOUR_BOOKED_FOR]->(t2)
MERGE (t3:Timeslot {slot: '03_04'})
MERGE (b3)-[:HOUR_BOOKED_FOR]->(t3)
WITH b3, u3, s3
// Count relationships using pattern comprehension
SET b3.totalDuration = SIZE([(b3)-[:HOUR_BOOKED_FOR]->() | 1])
// Fix CASE logic (use totalDuration, not spacePrice)
SET b3.spacePrice = CASE
  WHEN b3.totalDuration < 12 THEN s3.hourlyRate * b3.totalDuration
  WHEN b3.totalDuration = 12 THEN s3.halfdayRate
  WHEN b3.totalDuration = 24 THEN s3.fulldayRate
  ELSE s3.halfdayRate + (s3.hourlyRate * (b3.totalDuration - 12))
END
SET b3.sysFee = b3.spacePrice * 0.03
SET b3.totalPrice = b3.spacePrice + b3.sysFee
SET u3.numOfBookings = u3.numOfBookings + 1
SET u3.totalSpent = u3.totalSpent + b3.totalPrice
SET u3:Customer
// Continue with remaining relationships
MERGE (d3:Day {day: 
    CASE date(b3.bookingDate).dayOfWeek
        WHEN 1 THEN 'Monday'
        WHEN 2 THEN 'Tuesday'
        WHEN 3 THEN 'Wednesday'
        WHEN 4 THEN 'Thursday'
        WHEN 5 THEN 'Friday'
        WHEN 6 THEN 'Saturday'
        ELSE 'Sunday'
    END})
ON CREATE SET
    d3.numOfBookings = 0,
    d3.totalSpent = 0.0
MERGE (b3)-[:DAY_OF_THE_WEEK]->(d3)
MERGE (m3:Month {month: 
    CASE date(b3.bookingDate).month
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
    END, year: date(b3.bookingDate).year, numMonth: date(b3.bookingDate).month})
ON CREATE SET
    m3.numOfBookings = 0,
    m3.totalSpent = 0.0
MERGE (b3)-[:MONTH]->(m3)
MERGE (y3:Year {year: date(b3.bookingDate).year})
ON CREATE SET
    y3.numOfBookings = 0,
    y3.totalSpent = 0.0
MERGE (b3)-[:YEAR]->(y3)
MERGE (y3)-[:YEAR_OF]->(m3)
MERGE (se3:Season {season: 
  CASE 
    WHEN date(b3.bookingDate).month IN [1,2,3] THEN 'Winter'
    WHEN date(b3.bookingDate).month IN [4,5,6] THEN 'Spring'
    WHEN date(b3.bookingDate).month IN [7,8,9] THEN 'Summer'
    ELSE 'Fall'
  END})
ON CREATE SET
    se3.numOfBookings = 0,
    se3.totalSpent = 0.0
MERGE (b3)-[:SEASON]->(se3)
SET d3.numOfBookings = d3.numOfBookings + 1
SET d3.totalSpent = d3.totalSpent + b3.totalPrice
SET m3.numOfBookings = m3.numOfBookings + 1
SET m3.totalSpent = m3.totalSpent + b3.totalPrice
SET y3.numOfBookings = y3.numOfBookings + 1
SET y3.totalSpent = y3.totalSpent + b3.totalPrice
SET se3.numOfBookings = se3.numOfBookings + 1
SET se3.totalSpent = se3.totalSpent + b3.totalPrice
WITH b3, u3, s3
MATCH (s3)-[:IN_PRICE_RANGE]->(pr3)
SET pr3.numOfBookings = pr3.numOfBookings + 1
SET pr3.totalSpent = pr3.totalSpent + b3.totalPrice
// add payment nodes
MERGE (p3:Payment {id: 3, amount: b3.totalPrice, transacId: 'TXN12347', bank: 'Bank C', status: 'completed', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
MERGE (p3)-[:PAID_FOR]->(b3)
MERGE (u3)-[:MADE_PAYMENT]->(p3)
SET b3:Paid

MERGE (b4:Booking {id: 4, bookingDate: '2025-01-20', remark: 'Third booking', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH b4
MATCH (u4:User {id: 4})
MERGE (u4)-[:BOOKED_BY]->(b4)
WITH b4, u4
MATCH (s4:Space {id: 4})
MERGE (b4)-[:BOOKED_FOR]->(s4)
MERGE (t1:Timeslot {slot: '09_10'})
MERGE (b4)-[:HOUR_BOOKED_FOR]->(t1)
MERGE (t2:Timeslot {slot: '10_11'})
MERGE (b4)-[:HOUR_BOOKED_FOR]->(t2)
MERGE (t3:Timeslot {slot: '11_12'})
MERGE (b4)-[:HOUR_BOOKED_FOR]->(t3)
WITH b4, u4, s4
// Count relationships using pattern comprehension
SET b4.totalDuration = SIZE([(b4)-[:HOUR_BOOKED_FOR]->() | 1])
// Fix CASE logic (use totalDuration, not spacePrice)
SET b4.spacePrice = CASE
  WHEN b4.totalDuration < 12 THEN s4.hourlyRate * b4.totalDuration
  WHEN b4.totalDuration = 12 THEN s4.halfdayRate
  WHEN b4.totalDuration = 24 THEN s4.fulldayRate
  ELSE s4.halfdayRate + (s4.hourlyRate * (b4.totalDuration - 12))
END
SET b4.sysFee = b4.spacePrice * 0.03
SET b4.totalPrice = b4.spacePrice + b4.sysFee
SET u4.numOfBookings = u4.numOfBookings + 1
SET u4.totalSpent = u4.totalSpent + b4.totalPrice
SET u4:Customer
// Continue with remaining relationships
MERGE (d4:Day {day: 
    CASE date(b4.bookingDate).dayOfWeek
        WHEN 1 THEN 'Monday'
        WHEN 2 THEN 'Tuesday'
        WHEN 3 THEN 'Wednesday'
        WHEN 4 THEN 'Thursday'
        WHEN 5 THEN 'Friday'
        WHEN 6 THEN 'Saturday'
        ELSE 'Sunday'
    END})
ON CREATE SET
    d4.numOfBookings = 0,
    d4.totalSpent = 0.0
MERGE (b4)-[:DAY_OF_THE_WEEK]->(d4)
MERGE (m4:Month {month: 
    CASE date(b4.bookingDate).month
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
    END, year: date(b4.bookingDate).year, numMonth: date(b4.bookingDate).month})
ON CREATE SET
    m4.numOfBookings = 0,
    m4.totalSpent = 0.0
MERGE (b4)-[:MONTH]->(m4)
MERGE (y4:Year {year: date(b4.bookingDate).year})
ON CREATE SET
    y4.numOfBookings = 0,
    y4.totalSpent = 0.0
MERGE (b4)-[:YEAR]->(y4)
MERGE (y4)-[:YEAR_OF]->(m4)
MERGE (se4:Season {season: 
  CASE 
    WHEN date(b4.bookingDate).month IN [1,2,3] THEN 'Winter'
    WHEN date(b4.bookingDate).month IN [4,5,6] THEN 'Spring'
    WHEN date(b4.bookingDate).month IN [7,8,9] THEN 'Summer'
    ELSE 'Fall'
  END})
ON CREATE SET
    se4.numOfBookings = 0,
    se4.totalSpent = 0.0
MERGE (b4)-[:SEASON]->(se4)
SET d4.numOfBookings = d4.numOfBookings + 1
SET d4.totalSpent = d4.totalSpent + b4.totalPrice
SET m4.numOfBookings = m4.numOfBookings + 1
SET m4.totalSpent = m4.totalSpent + b4.totalPrice
SET y4.numOfBookings = y4.numOfBookings + 1
SET y4.totalSpent = y4.totalSpent + b4.totalPrice
SET se4.numOfBookings = se4.numOfBookings + 1
SET se4.totalSpent = se4.totalSpent + b4.totalPrice
WITH b4, u4, s4
MATCH (s4)-[:IN_PRICE_RANGE]->(pr4)
SET pr4.numOfBookings = pr4.numOfBookings + 1
SET pr4.totalSpent = pr4.totalSpent + b4.totalPrice
// add payment nodes
MERGE (p4:Payment {id: 4, amount: b4.totalPrice, transacId: 'TXN12348', bank: 'Bank D', status: 'completed', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
MERGE (p4)-[:PAID_FOR]->(b4)
MERGE (u4)-[:MADE_PAYMENT]->(p4)
SET b4:Paid

MERGE (b5:Booking {id: 5, bookingDate: '2024-12-15', remark: 'Fourth booking', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH b5
MATCH (u5:User {id: 2})
MERGE (u5)-[:BOOKED_BY]->(b5)
WITH b5, u5
MATCH (s5:Space {id: 5})
MERGE (b5)-[:BOOKED_FOR]->(s5)
MERGE (t1:Timeslot {slot: '14_15'})
MERGE (b5)-[:HOUR_BOOKED_FOR]->(t1)
MERGE (t2:Timeslot {slot: '15_16'})
MERGE (b5)-[:HOUR_BOOKED_FOR]->(t2)
MERGE (t3:Timeslot {slot: '16_17'})
MERGE (b5)-[:HOUR_BOOKED_FOR]->(t3)
WITH b5, u5, s5
// Count relationships using pattern comprehension
SET b5.totalDuration = SIZE([(b5)-[:HOUR_BOOKED_FOR]->() | 1])
// Fix CASE logic (use totalDuration, not spacePrice)
SET b5.spacePrice = CASE
  WHEN b5.totalDuration < 12 THEN s5.hourlyRate * b5.totalDuration
  WHEN b5.totalDuration = 12 THEN s5.halfdayRate
  WHEN b5.totalDuration = 24 THEN s5.fulldayRate
  ELSE s5.halfdayRate + (s5.hourlyRate * (b5.totalDuration - 12))
END
SET b5.sysFee = b5.spacePrice * 0.03
SET b5.totalPrice = b5.spacePrice + b5.sysFee
SET u5.numOfBookings = u5.numOfBookings + 1
SET u5.totalSpent = u5.totalSpent + b5.totalPrice
SET u5:Customer
// Continue with remaining relationships
MERGE (d5:Day {day: 
    CASE date(b5.bookingDate).dayOfWeek
        WHEN 1 THEN 'Monday'
        WHEN 2 THEN 'Tuesday'
        WHEN 3 THEN 'Wednesday'
        WHEN 4 THEN 'Thursday'
        WHEN 5 THEN 'Friday'
        WHEN 6 THEN 'Saturday'
        ELSE 'Sunday'
    END})
ON CREATE SET
    d5.numOfBookings = 0,
    d5.totalSpent = 0.0
MERGE (b5)-[:DAY_OF_THE_WEEK]->(d5)
MERGE (m5:Month {month: 
    CASE date(b5.bookingDate).month
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
    END, year: date(b5.bookingDate).year, numMonth: date(b5.bookingDate).month})
ON CREATE SET
    m5.numOfBookings = 0,
    m5.totalSpent = 0.0
MERGE (b5)-[:MONTH]->(m5)
MERGE (y5:Year {year: date(b5.bookingDate).year})
ON CREATE SET
    y5.numOfBookings = 0,
    y5.totalSpent = 0.0
MERGE (b5)-[:YEAR]->(y5)
MERGE (y5)-[:YEAR_OF]->(m5)
MERGE (se5:Season {season: 
  CASE 
    WHEN date(b5.bookingDate).month IN [1,2,3] THEN 'Winter'
    WHEN date(b5.bookingDate).month IN [4,5,6] THEN 'Spring'
    WHEN date(b5.bookingDate).month IN [7,8,9] THEN 'Summer'
    ELSE 'Fall'
  END })
ON CREATE SET
    se5.numOfBookings = 0,
    se5.totalSpent = 0.0
MERGE (b5)-[:SEASON]->(se5)
SET d5.numOfBookings = d5.numOfBookings + 1
SET d5.totalSpent = d5.totalSpent + b5.totalPrice
SET m5.numOfBookings = m5.numOfBookings + 1
SET m5.totalSpent = m5.totalSpent + b5.totalPrice
SET y5.numOfBookings = y5.numOfBookings + 1
SET y5.totalSpent = y5.totalSpent + b5.totalPrice
SET se5.numOfBookings = se5.numOfBookings + 1
SET se5.totalSpent = se5.totalSpent + b5.totalPrice
WITH b5, u5, s5
MATCH (s5)-[:IN_PRICE_RANGE]->(pr5)
SET pr5.numOfBookings = pr5.numOfBookings + 1
SET pr5.totalSpent = pr5.totalSpent + b5.totalPrice
// add payment nodes
MERGE (p5:Payment {id: 5, amount: b5.totalPrice, transacId: 'TXN12349', bank: 'Bank E', status: 'completed', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
MERGE (p5)-[:PAID_FOR]->(b5)
MERGE (u5)-[:MADE_PAYMENT]->(p5)
SET b5:Paid

MERGE (b6:Booking {id: 6, bookingDate: '2025-06-20', remark: 'Fifth booking', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH b6
MATCH (u6:User {id: 6})
MERGE (u6)-[:BOOKED_BY]->(b6)
WITH b6, u6
MATCH (s6:Space {id: 6})
MERGE (b6)-[:BOOKED_FOR]->(s6)
MERGE (t1:Timeslot {slot: '04_05'})
MERGE (b6)-[:HOUR_BOOKED_FOR]->(t1)
MERGE (t2:Timeslot {slot: '05_06'})
MERGE (b6)-[:HOUR_BOOKED_FOR]->(t2)
MERGE (t3:Timeslot {slot: '06_07'})
MERGE (b6)-[:HOUR_BOOKED_FOR]->(t3)
WITH b6, u6, s6
// Count relationships using pattern comprehension
SET b6.totalDuration = SIZE([(b6)-[:HOUR_BOOKED_FOR]->() | 1])
// Fix CASE logic (use totalDuration, not spacePrice)
SET b6.spacePrice = CASE
  WHEN b6.totalDuration < 12 THEN s6.hourlyRate * b6.totalDuration
  WHEN b6.totalDuration = 12 THEN s6.halfdayRate
  WHEN b6.totalDuration = 24 THEN s6.fulldayRate
  ELSE s6.halfdayRate + (s6.hourlyRate * (b6.totalDuration - 12))
END
SET b6.sysFee = b6.spacePrice * 0.03
SET b6.totalPrice = b6.spacePrice + b6.sysFee
SET u6.numOfBookings = u6.numOfBookings + 1
SET u6.totalSpent = u6.totalSpent + b6.totalPrice
SET u6:Customer
// Continue with remaining relationships
MERGE (d6:Day {day: 
    CASE date(b6.bookingDate).dayOfWeek
        WHEN 1 THEN 'Monday'
        WHEN 2 THEN 'Tuesday'
        WHEN 3 THEN 'Wednesday'
        WHEN 4 THEN 'Thursday'
        WHEN 5 THEN 'Friday'
        WHEN 6 THEN 'Saturday'
        ELSE 'Sunday'
    END})
ON CREATE SET
    d6.numOfBookings = 0,
    d6.totalSpent = 0.0
MERGE (b6)-[:DAY_OF_THE_WEEK]->(d6)
MERGE (m6:Month {month: 
    CASE date(b6.bookingDate).month
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
    END, year: date(b6.bookingDate).year, numMonth: date(b6.bookingDate).month})
ON CREATE SET
    m6.numOfBookings = 0,
    m6.totalSpent = 0.0
MERGE (b6)-[:MONTH]->(m6)
MERGE (y6:Year {year: date(b6.bookingDate).year})
ON CREATE SET
    y6.numOfBookings = 0,
    y6.totalSpent = 0.0
MERGE (b6)-[:YEAR]->(y6)
MERGE (y6)-[:YEAR_OF]->(m6)
MERGE (se6:Season {season: 
  CASE 
    WHEN date(b6.bookingDate).month IN [1,2,3] THEN 'Winter'
    WHEN date(b6.bookingDate).month IN [4,5,6] THEN 'Spring'
    WHEN date(b6.bookingDate).month IN [7,8,9] THEN 'Summer'
    ELSE 'Fall'
  END})
ON CREATE SET
    se6.numOfBookings = 0,
    se6.totalSpent = 0.0
MERGE (b6)-[:SEASON]->(se6)
SET d6.numOfBookings = d6.numOfBookings + 1
SET d6.totalSpent = d6.totalSpent + b6.totalPrice
SET m6.numOfBookings = m6.numOfBookings + 1
SET m6.totalSpent = m6.totalSpent + b6.totalPrice
SET y6.numOfBookings = y6.numOfBookings + 1
SET y6.totalSpent = y6.totalSpent + b6.totalPrice
SET se6.numOfBookings = se6.numOfBookings + 1
SET se6.totalSpent = se6.totalSpent + b6.totalPrice
WITH b6, u6, s6
MATCH (s6)-[:IN_PRICE_RANGE]->(pr6)
SET pr6.numOfBookings = pr6.numOfBookings + 1
SET pr6.totalSpent = pr6.totalSpent + b6.totalPrice
// add payment nodes
MERGE (p6:Payment {id: 6, amount: b6.totalPrice, transacId: 'TXN12350', bank: 'Bank F', status: 'completed', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
MERGE (p6)-[:PAID_FOR]->(b6)
MERGE (u6)-[:MADE_PAYMENT]->(p6)
SET b6:Paid

MERGE (b7:Booking {id: 7, bookingDate: '2025-07-15', remark: 'Sixth booking', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH b7
MATCH (u7:User {id: 7})
MERGE (u7)-[:BOOKED_BY]->(b7)
WITH b7, u7
MATCH (s7:Space {id: 7})
MERGE (b7)-[:BOOKED_FOR]->(s7)
MERGE (t1:Timeslot {slot: '09_10'})
MERGE (b7)-[:HOUR_BOOKED_FOR]->(t1)
MERGE (t2:Timeslot {slot: '10_11'})
MERGE (b7)-[:HOUR_BOOKED_FOR]->(t2)
MERGE (t3:Timeslot {slot: '11_12'})
MERGE (b7)-[:HOUR_BOOKED_FOR]->(t3)
WITH b7, u7, s7
// Count relationships using pattern comprehension
SET b7.totalDuration = SIZE([(b7)-[:HOUR_BOOKED_FOR]->() | 1])
// Fix CASE logic (use totalDuration, not spacePrice)
SET b7.spacePrice = CASE
  WHEN b7.totalDuration < 12 THEN s7.hourlyRate * b7.totalDuration
  WHEN b7.totalDuration = 12 THEN s7.halfdayRate
  WHEN b7.totalDuration = 24 THEN s7.fulldayRate
  ELSE s7.halfdayRate + (s7.hourlyRate * (b7.totalDuration - 12))
END
SET b7.sysFee = b7.spacePrice * 0.03
SET b7.totalPrice = b7.spacePrice + b7.sysFee
SET u7.numOfBookings = u7.numOfBookings + 1
SET u7.totalSpent = u7.totalSpent + b7.totalPrice
SET u7:Customer
// Continue with remaining relationships
MERGE (d7:Day {day: 
    CASE date(b7.bookingDate).dayOfWeek
        WHEN 1 THEN 'Monday'
        WHEN 2 THEN 'Tuesday'
        WHEN 3 THEN 'Wednesday'
        WHEN 4 THEN 'Thursday'
        WHEN 5 THEN 'Friday'
        WHEN 6 THEN 'Saturday'
        ELSE 'Sunday'
    END})
ON CREATE SET
    d7.numOfBookings = 0,
    d7.totalSpent = 0.0
MERGE (b7)-[:DAY_OF_THE_WEEK]->(d7)
MERGE (m7:Month {month: 
    CASE date(b7.bookingDate).month
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
    END, year: date(b7.bookingDate).year, numMonth: date(b7.bookingDate).month})
ON CREATE SET
    m7.numOfBookings = 0,
    m7.totalSpent = 0.0
MERGE (b7)-[:MONTH]->(m7)
MERGE (y7:Year {year: date(b7.bookingDate).year})
ON CREATE SET
    y7.numOfBookings = 0,
    y7.totalSpent = 0.0
MERGE (b7)-[:YEAR]->(y7)
MERGE (y7)-[:YEAR_OF]->(m7)
MERGE (se7:Season {season: 
  CASE 
    WHEN date(b7.bookingDate).month IN [1,2,3] THEN 'Winter'
    WHEN date(b7.bookingDate).month IN [4,5,6] THEN 'Spring'
    WHEN date(b7.bookingDate).month IN [7,8,9] THEN 'Summer'
    ELSE 'Fall'
  END})
ON CREATE SET
    se7.numOfBookings = 0,
    se7.totalSpent = 0.0
MERGE (b7)-[:SEASON]->(se7)
SET d7.numOfBookings = d7.numOfBookings + 1
SET d7.totalSpent = d7.totalSpent + b7.totalPrice
SET m7.numOfBookings = m7.numOfBookings + 1
SET m7.totalSpent = m7.totalSpent + b7.totalPrice
SET y7.numOfBookings = y7.numOfBookings + 1
SET y7.totalSpent = y7.totalSpent + b7.totalPrice
SET se7.numOfBookings = se7.numOfBookings + 1
SET se7.totalSpent = se7.totalSpent + b7.totalPrice
WITH b7, u7, s7
MATCH (s7)-[:IN_PRICE_RANGE]->(pr7)
SET pr7.numOfBookings = pr7.numOfBookings + 1
SET pr7.totalSpent = pr7.totalSpent + b7.totalPrice
// add payment nodes
MERGE (p7:Payment {id: 7, amount: b7.totalPrice, transacId: 'TXN12351', bank: 'Bank G', status: 'completed', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
MERGE (p7)-[:PAID_FOR]->(b7)
MERGE (u7)-[:MADE_PAYMENT]->(p7)
SET b7:Paid

MERGE (b8:Booking {id: 8, bookingDate: '2025-08-10', remark: 'Seventh booking', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH b8
MATCH (u8:User {id: 1})
MERGE (u8)-[:BOOKED_BY]->(b8)
WITH b8, u8
MATCH (s8:Space {id: 8})
MERGE (b8)-[:BOOKED_FOR]->(s8)
MERGE (t1:Timeslot {slot: '21_22'})
MERGE (b8)-[:HOUR_BOOKED_FOR]->(t1)
MERGE (t2:Timeslot {slot: '22_23'})
MERGE (b8)-[:HOUR_BOOKED_FOR]->(t2)
MERGE (t3:Timeslot {slot: '23_24'})
MERGE (b8)-[:HOUR_BOOKED_FOR]->(t3)
WITH b8, u8, s8
// Count relationships using pattern comprehension
SET b8.totalDuration = SIZE([(b8)-[:HOUR_BOOKED_FOR]->() | 1])
// Fix CASE logic (use totalDuration, not spacePrice)
SET b8.spacePrice = CASE
  WHEN b8.totalDuration < 12 THEN s8.hourlyRate * b8.totalDuration
  WHEN b8.totalDuration = 12 THEN s8.halfdayRate
  WHEN b8.totalDuration = 24 THEN s8.fulldayRate
  ELSE s8.halfdayRate + (s8.hourlyRate * (b8.totalDuration - 12))
END
SET b8.sysFee = b8.spacePrice * 0.03
SET b8.totalPrice = b8.spacePrice + b8.sysFee
SET u8.numOfBookings = u8.numOfBookings + 1
SET u8.totalSpent = u8.totalSpent + b8.totalPrice
SET u8:Customer
// Continue with remaining relationships
MERGE (d8:Day {day: 
    CASE date(b8.bookingDate).dayOfWeek
        WHEN 1 THEN 'Monday'
        WHEN 2 THEN 'Tuesday'
        WHEN 3 THEN 'Wednesday'
        WHEN 4 THEN 'Thursday'
        WHEN 5 THEN 'Friday'
        WHEN 6 THEN 'Saturday'
        ELSE 'Sunday'
    END})
ON CREATE SET
    d8.numOfBookings = 0,
    d8.totalSpent = 0.0
MERGE (b8)-[:DAY_OF_THE_WEEK]->(d8)
MERGE (m8:Month {month: 
    CASE date(b8.bookingDate).month
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
    END, year: date(b8.bookingDate).year, numMonth: date(b8.bookingDate).month})
ON CREATE SET
    m8.numOfBookings = 0,
    m8.totalSpent = 0.0
MERGE (b8)-[:MONTH]->(m8)
MERGE (y8:Year {year: date(b8.bookingDate).year})
ON CREATE SET
    y8.numOfBookings = 0,
    y8.totalSpent = 0.0
MERGE (b8)-[:YEAR]->(y8)
MERGE (y8)-[:YEAR_OF]->(m8)
MERGE (se8:Season {season: 
  CASE 
    WHEN date(b8.bookingDate).month IN [1,2,3] THEN 'Winter'
    WHEN date(b8.bookingDate).month IN [4,5,6] THEN 'Spring'
    WHEN date(b8.bookingDate).month IN [7,8,9] THEN 'Summer'
    ELSE 'Fall'
  END})
ON CREATE SET
    se8.numOfBookings = 0,
    se8.totalSpent = 0.0
MERGE (b8)-[:SEASON]->(se8)
SET d8.numOfBookings = d8.numOfBookings + 1
SET d8.totalSpent = d8.totalSpent + b8.totalPrice
SET m8.numOfBookings = m8.numOfBookings + 1
SET m8.totalSpent = m8.totalSpent + b8.totalPrice
SET y8.numOfBookings = y8.numOfBookings + 1
SET y8.totalSpent = y8.totalSpent + b8.totalPrice
SET se8.numOfBookings = se8.numOfBookings + 1
SET se8.totalSpent = se8.totalSpent + b8.totalPrice
WITH b8, u8, s8
MATCH (s8)-[:IN_PRICE_RANGE]->(pr8)
SET pr8.numOfBookings = pr8.numOfBookings + 1
SET pr8.totalSpent = pr8.totalSpent + b8.totalPrice
// add payment nodes
MERGE (p8:Payment {id: 8, amount: b8.totalPrice, transacId: 'TXN12352', bank: 'Bank H', status: 'completed', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
MERGE (p8)-[:PAID_FOR]->(b8)
MERGE (u8)-[:MADE_PAYMENT]->(p8)
SET b8:Paid

MERGE (b9:Booking {id : 9, bookingDate: '2025-09-05', remark: 'Eighth booking', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH b9
MATCH (u9:User {id: 9})
MERGE (u9)-[:BOOKED_BY]->(b9)
WITH b9, u9
MATCH (s9:Space {id: 9})
MERGE (b9)-[:BOOKED_FOR]->(s9)
MERGE (t1:Timeslot {slot: '05_06'})
MERGE (b9)-[:HOUR_BOOKED_FOR]->(t1)
MERGE (t2:Timeslot {slot: '06_07'})
MERGE (b9)-[:HOUR_BOOKED_FOR]->(t2)
WITH b9, u9, s9
// Count relationships using pattern comprehension
SET b9.totalDuration = SIZE([(b9)-[:HOUR_BOOKED_FOR]->() | 1])
// Fix CASE logic (use totalDuration, not spacePrice)
SET b9.spacePrice = CASE
  WHEN b9.totalDuration < 12 THEN s9.hourlyRate * b9.totalDuration
  WHEN b9.totalDuration = 12 THEN s9.halfdayRate
  WHEN b9.totalDuration = 24 THEN s9.fulldayRate
  ELSE s9.halfdayRate + (s9.hourlyRate * (b9.totalDuration - 12))
END
SET b9.sysFee = b9.spacePrice * 0.03
SET b9.totalPrice = b9.spacePrice + b9.sysFee
SET u9.numOfBookings = u9.numOfBookings + 1
SET u9.totalSpent = u9.totalSpent + b9.totalPrice
SET u9:Customer
// Continue with remaining relationships
MERGE (d9:Day {day: 
    CASE date(b9.bookingDate).dayOfWeek
        WHEN 1 THEN 'Monday'
        WHEN 2 THEN 'Tuesday'
        WHEN 3 THEN 'Wednesday'
        WHEN 4 THEN 'Thursday'
        WHEN 5 THEN 'Friday'
        WHEN 6 THEN 'Saturday'
        ELSE 'Sunday'
    END})
ON CREATE SET
    d9.numOfBookings = 0,
    d9.totalSpent = 0.0
MERGE (b9)-[:DAY_OF_THE_WEEK]->(d9)
MERGE (m9:Month {month: 
    CASE date(b9.bookingDate).month
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
    END, year: date(b9.bookingDate).year, numMonth: date(b9.bookingDate).month})
ON CREATE SET
    m9.numOfBookings = 0,
    m9.totalSpent = 0.0
MERGE (b9)-[:MONTH]->(m9)
MERGE (y9:Year {year: date(b9.bookingDate).year})
ON CREATE SET
    y9.numOfBookings = 0,
    y9.totalSpent = 0.0
MERGE (b9)-[:YEAR]->(y9)
MERGE (y9)-[:YEAR_OF]->(m9)
MERGE (se9:Season {season: 
  CASE 
    WHEN date(b9.bookingDate).month IN [1,2,3] THEN 'Winter'
    WHEN date(b9.bookingDate).month IN [4,5,6] THEN 'Spring'
    WHEN date(b9.bookingDate).month IN [7,8,9] THEN 'Summer'
    ELSE 'Fall'
  END})
ON CREATE SET
    se9.numOfBookings = 0,
    se9.totalSpent = 0.0
MERGE (b9)-[:SEASON]->(se9)
SET d9.numOfBookings = d9.numOfBookings + 1
SET d9.totalSpent = d9.totalSpent + b9.totalPrice
SET m9.numOfBookings = m9.numOfBookings + 1
SET m9.totalSpent = m9.totalSpent + b9.totalPrice
SET y9.numOfBookings = y9.numOfBookings + 1
SET y9.totalSpent = y9.totalSpent + b9.totalPrice
SET se9.numOfBookings = se9.numOfBookings + 1
SET se9.totalSpent = se9.totalSpent + b9.totalPrice
WITH b9, u9, s9
MATCH (s9)-[:IN_PRICE_RANGE]->(pr9)
SET pr9.numOfBookings = pr9.numOfBookings + 1
SET pr9.totalSpent = pr9.totalSpent + b9.totalPrice
// add payment nodes
MERGE (p9:Payment {id: 9, amount: b9.totalPrice, transacId: 'TXN12353', bank: 'Bank I', status: 'completed', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
MERGE (p9)-[:PAID_FOR]->(b9)
MERGE (u9)-[:MADE_PAYMENT]->(p9)
SET b9:Paid

MERGE (b10:Booking {id: 10, bookingDate: '2025-10-03', remark: 'Ninth booking', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH b10
MATCH (u10:User {id: 10})
MERGE (u10)-[:BOOKED_BY]->(b10)
WITH b10, u10
MATCH (s10:Space {id: 10})
MERGE (b10)-[:BOOKED_FOR]->(s10)
MERGE (t1:Timeslot {slot: '09_10'})
MERGE (b10)-[:HOUR_BOOKED_FOR]->(t1)
MERGE (t2:Timeslot {slot: '10_11'})
MERGE (b10)-[:HOUR_BOOKED_FOR]->(t2)
MERGE (t3:Timeslot {slot: '11_12'})
MERGE (b10)-[:HOUR_BOOKED_FOR]->(t3)
WITH b10, u10, s10
// Count relationships using pattern comprehension
SET b10.totalDuration = SIZE([(b10)-[:HOUR_BOOKED_FOR]->() | 1])
// Fix CASE logic (use totalDuration, not spacePrice)
SET b10.spacePrice = CASE
  WHEN b10.totalDuration < 12 THEN s10.hourlyRate * b10.totalDuration
  WHEN b10.totalDuration = 12 THEN s10.halfdayRate
  WHEN b10.totalDuration = 24 THEN s10.fulldayRate
  ELSE s10.halfdayRate + (s10.hourlyRate * (b10.totalDuration - 12))
END
SET b10.sysFee = b10.spacePrice * 0.03
SET b10.totalPrice = b10.spacePrice + b10.sysFee
SET u10.numOfBookings = u10.numOfBookings + 1
SET u10.totalSpent = u10.totalSpent + b10.totalPrice
SET u10:Customer
// Continue with remaining relationships
MERGE (d10:Day {day: 
    CASE date(b10.bookingDate).dayOfWeek
        WHEN 1 THEN 'Monday'
        WHEN 2 THEN 'Tuesday'
        WHEN 3 THEN 'Wednesday'
        WHEN 4 THEN 'Thursday'
        WHEN 5 THEN 'Friday'
        WHEN 6 THEN 'Saturday'
        ELSE 'Sunday'
    END})
ON CREATE SET
    d10.numOfBookings = 0,
    d10.totalSpent = 0.0
MERGE (b10)-[:DAY_OF_THE_WEEK]->(d10)
MERGE (m10:Month {month: 
    CASE date(b10.bookingDate).month
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
    END, year: date(b10.bookingDate).year, numMonth: date(b10.bookingDate).month})
ON CREATE SET
    m10.numOfBookings = 0,
    m10.totalSpent = 0.0
MERGE (b10)-[:MONTH]->(m10)
MERGE (y10:Year {year: date(b10.bookingDate).year})
ON CREATE SET
    y10.numOfBookings = 0,
    y10.totalSpent = 0.0
MERGE (b10)-[:YEAR]->(y10)
MERGE (y10)-[:YEAR_OF]->(m10)
MERGE (se10:Season {season: 
  CASE 
    WHEN date(b10.bookingDate).month IN [1,2,3] THEN 'Winter'
    WHEN date(b10.bookingDate).month IN [4,5,6] THEN 'Spring'
    WHEN date(b10.bookingDate).month IN [7,8,9] THEN 'Summer'
    ELSE 'Fall'
  END})
ON CREATE SET
    se10.numOfBookings = 0,
    se10.totalSpent = 0.0
MERGE (b10)-[:SEASON]->(se10)
SET d10.numOfBookings = d10.numOfBookings + 1
SET d10.totalSpent = d10.totalSpent + b10.totalPrice
SET m10.numOfBookings = m10.numOfBookings + 1
SET m10.totalSpent = m10.totalSpent + b10.totalPrice
SET y10.numOfBookings = y10.numOfBookings + 1
SET y10.totalSpent = y10.totalSpent + b10.totalPrice
SET se10.numOfBookings = se10.numOfBookings + 1
SET se10.totalSpent = se10.totalSpent + b10.totalPrice
WITH b10, u10, s10
MATCH (s10)-[:IN_PRICE_RANGE]->(pr10)
SET pr10.numOfBookings = pr10.numOfBookings + 1
SET pr10.totalSpent = pr10.totalSpent + b10.totalPrice
// add payment nodes
MERGE (p10:Payment {id: 10, amount: b10.totalPrice, transacId: 'TXN12354', bank: 'Bank J', status: 'completed', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
MERGE (p10)-[:PAID_FOR]->(b10)
MERGE (u10)-[:MADE_PAYMENT]->(p10)
SET b10:Paid

MERGE (b11:Booking {id: 11, bookingDate: '2025-11-01', remark: 'Tenth booking', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH b11
MATCH (u11:User {id: 1})
MERGE (u11)-[:BOOKED_BY]->(b11)
WITH b11, u11
MATCH (s11:Space {id: 11})
MERGE (b11)-[:BOOKED_FOR]->(s11)
MERGE (t1:Timeslot {slot: '09_10'})
MERGE (b11)-[:HOUR_BOOKED_FOR]->(t1)
MERGE (t2:Timeslot {slot: '10_11'})
MERGE (b11)-[:HOUR_BOOKED_FOR]->(t2)
MERGE (t3:Timeslot {slot: '11_12'})
MERGE (b11)-[:HOUR_BOOKED_FOR]->(t3)
WITH b11, u11, s11
// Count relationships using pattern comprehension
SET b11.totalDuration = SIZE([(b11)-[:HOUR_BOOKED_FOR]->() | 1])
// Fix CASE logic (use totalDuration, not spacePrice)
SET b11.spacePrice = CASE
  WHEN b11.totalDuration < 12 THEN s11.hourlyRate * b11.totalDuration
  WHEN b11.totalDuration = 12 THEN s11.halfdayRate
  WHEN b11.totalDuration = 24 THEN s11.fulldayRate
  ELSE s11.halfdayRate + (s11.hourlyRate * (b11.totalDuration - 12))
END
SET b11.sysFee = b11.spacePrice * 0.03
SET b11.totalPrice = b11.spacePrice + b11.sysFee
SET u11.numOfBookings = u11.numOfBookings + 1
SET u11.totalSpent = u11.totalSpent + b11.totalPrice
SET u11:Customer
// Continue with remaining relationships
MERGE (d11:Day {day: 
    CASE date(b11.bookingDate).dayOfWeek
        WHEN 1 THEN 'Monday'
        WHEN 2 THEN 'Tuesday'
        WHEN 3 THEN 'Wednesday'
        WHEN 4 THEN 'Thursday'
        WHEN 5 THEN 'Friday'
        WHEN 6 THEN 'Saturday'
        ELSE 'Sunday'
    END})
ON CREATE SET
    d11.numOfBookings = 0,
    d11.totalSpent = 0.0
MERGE (b11)-[:DAY_OF_THE_WEEK]->(d11)
MERGE (m11:Month {month: 
    CASE date(b11.bookingDate).month
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
    END, year: date(b11.bookingDate).year, numMonth: date(b11.bookingDate).month})
ON CREATE SET
    m11.numOfBookings = 0,
    m11.totalSpent = 0.0
MERGE (b11)-[:MONTH]->(m11)
MERGE (y11:Year {year: date(b11.bookingDate).year})
ON CREATE SET
    y11.numOfBookings = 0,
    y11.totalSpent = 0.0
MERGE (b11)-[:YEAR]->(y11)
MERGE (y11)-[:YEAR_OF]->(m11)
MERGE (se11:Season {season: 
  CASE 
    WHEN date(b11.bookingDate).month IN [1,2,3] THEN 'Winter'
    WHEN date(b11.bookingDate).month IN [4,5,6] THEN 'Spring'
    WHEN date(b11.bookingDate).month IN [7,8,9] THEN 'Summer'
    ELSE 'Fall'
  END})
ON CREATE SET
    se11.numOfBookings = 0,
    se11.totalSpent = 0.0
MERGE (b11)-[:SEASON]->(se11)
SET d11.numOfBookings = d11.numOfBookings + 1
SET d11.totalSpent = d11.totalSpent + b11.totalPrice
SET m11.numOfBookings = m11.numOfBookings + 1
SET m11.totalSpent = m11.totalSpent + b11.totalPrice
SET y11.numOfBookings = y11.numOfBookings + 1
SET y11.totalSpent = y11.totalSpent + b11.totalPrice
SET se11.numOfBookings = se11.numOfBookings + 1
SET se11.totalSpent = se11.totalSpent + b11.totalPrice
WITH b11, u11, s11, d11, m11, y11, se11
MATCH (s11)-[:IN_PRICE_RANGE]->(pr11)
SET pr11.numOfBookings = pr11.numOfBookings + 1
SET pr11.totalSpent = pr11.totalSpent + b11.totalPrice
// cancel booking
WITH b11, u11, d11, m11, y11, se11, pr11, s11
MATCH (b11:Booking {id: 11})
SET u11.numOfBookings = u11.numOfBookings - 1
SET u11.totalSpent = u11.totalSpent - b11.totalPrice
SET d11.numOfBookings = d11.numOfBookings - 1
SET d11.totalSpent = d11.totalSpent - b11.totalPrice
SET m11.numOfBookings = m11.numOfBookings - 1
SET m11.totalSpent = m11.totalSpent - b11.totalPrice
SET y11.numOfBookings = y11.numOfBookings - 1
SET y11.totalSpent = y11.totalSpent - b11.totalPrice
SET se11.numOfBookings = se11.numOfBookings - 1
SET se11.totalSpent = se11.totalSpent - b11.totalPrice
WITH b11, u11, s11
MATCH (s11)-[:IN_PRICE_RANGE]->(pr11)
SET pr11.numOfBookings = pr11.numOfBookings - 1
SET pr11.totalSpent = pr11.totalSpent - b11.totalPrice
SET b11:Cancelled

MERGE (b12:Booking {id: 12, bookingDate: '2025-12-10', remark: 'Eleventh booking', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH b12
MATCH (u12:User {id: 12})
MERGE (u12)-[:BOOKED_BY]->(b12)
WITH b12, u12
MATCH (s12:Space {id: 12})
MERGE (b12)-[:BOOKED_FOR]->(s12)
MERGE (t1:Timeslot {slot: '09_10'})
MERGE (b12)-[:HOUR_BOOKED_FOR]->(t1)
WITH b12, u12, s12
// Count relationships using pattern comprehension
SET b12.totalDuration = SIZE([(b12)-[:HOUR_BOOKED_FOR]->() | 1])
// Fix CASE logic (use totalDuration, not spacePrice)
SET b12.spacePrice = CASE
  WHEN b12.totalDuration < 12 THEN s12.hourlyRate * b12.totalDuration
  WHEN b12.totalDuration = 12 THEN s12.halfdayRate
  WHEN b12.totalDuration = 24 THEN s12.fulldayRate
  ELSE s12.halfdayRate + (s12.hourlyRate * (b12.totalDuration - 12))
END
SET b12.sysFee = b12.spacePrice * 0.03
SET b12.totalPrice = b12.spacePrice + b12.sysFee
SET u12.numOfBookings = u12.numOfBookings + 1
SET u12.totalSpent = u12.totalSpent + b12.totalPrice
SET u12:Customer
// Continue with remaining relationships
MERGE (d12:Day {day: 
    CASE date(b12.bookingDate).dayOfWeek
        WHEN 1 THEN 'Monday'
        WHEN 2 THEN 'Tuesday'
        WHEN 3 THEN 'Wednesday'
        WHEN 4 THEN 'Thursday'
        WHEN 5 THEN 'Friday'
        WHEN 6 THEN 'Saturday'
        ELSE 'Sunday'
    END})
ON CREATE SET
    d12.numOfBookings = 0,
    d12.totalSpent = 0.0
MERGE (b12)-[:DAY_OF_THE_WEEK]->(d12)
MERGE (m12:Month {month: 
    CASE date(b12.bookingDate).month
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
    END, year: date(b12.bookingDate).year, numMonth: date(b12.bookingDate).month})
ON CREATE SET
    m12.numOfBookings = 0,
    m12.totalSpent = 0.0
MERGE (b12)-[:MONTH]->(m12)
MERGE (y12:Year {year: date(b12.bookingDate).year})
ON CREATE SET
    y12.numOfBookings = 0,
    y12.totalSpent = 0.0
MERGE (b12)-[:YEAR]->(y12)
MERGE (y12)-[:YEAR_OF]->(m12)
MERGE (se12:Season {season: 
  CASE 
    WHEN date(b12.bookingDate).month IN [1,2,3] THEN 'Winter'
    WHEN date(b12.bookingDate).month IN [4,5,6] THEN 'Spring'
    WHEN date(b12.bookingDate).month IN [7,8,9] THEN 'Summer'
    ELSE 'Fall'
  END})
ON CREATE SET
    se12.numOfBookings = 0,
    se12.totalSpent = 0.0
MERGE (b12)-[:SEASON]->(se12)
SET d12.numOfBookings = d12.numOfBookings + 1
SET d12.totalSpent = d12.totalSpent + b12.totalPrice
SET m12.numOfBookings = m12.numOfBookings + 1
SET m12.totalSpent = m12.totalSpent + b12.totalPrice
SET y12.numOfBookings = y12.numOfBookings + 1
SET y12.totalSpent = y12.totalSpent + b12.totalPrice
SET se12.numOfBookings = se12.numOfBookings + 1
SET se12.totalSpent = se12.totalSpent + b12.totalPrice
WITH b12, u12, s12, d12, m12, y12, se12
MATCH (s12)-[:IN_PRICE_RANGE]->(pr12)
SET pr12.numOfBookings = pr12.numOfBookings + 1
SET pr12.totalSpent = pr12.totalSpent + b12.totalPrice
// Cancel booking
WITH b12, u12, d12, m12, y12, se12, s12
MATCH (b12:Booking {id: 12})
SET u12.numOfBookings = u12.numOfBookings - 1
SET u12.totalSpent = u12.totalSpent - b12.totalPrice
SET d12.numOfBookings = d12.numOfBookings - 1
SET d12.totalSpent = d12.totalSpent - b12.totalPrice
SET m12.numOfBookings = m12.numOfBookings - 1
SET m12.totalSpent = m12.totalSpent - b12.totalPrice
SET y12.numOfBookings = y12.numOfBookings - 1
SET y12.totalSpent = y12.totalSpent - b12.totalPrice
SET se12.numOfBookings = se12.numOfBookings - 1
SET se12.totalSpent = se12.totalSpent - b12.totalPrice
WITH b12, u12, s12
MATCH (s12)-[:IN_PRICE_RANGE]->(pr12)
SET pr12.numOfBookings = pr12.numOfBookings - 1
SET pr12.totalSpent = pr12.totalSpent - b12.totalPrice
SET b12:Cancelled

MERGE (b13:Booking {id: 13, bookingDate: '2025-01-01', remark: 'Twelfth booking', createdAt: '2025-01-01T00:00:00Z', updatedAt: '2025-01-01T00:00:00Z'})
WITH b13
MATCH (u13:User {id: 13})
MERGE (u13)-[:BOOKED_BY]->(b13)
WITH b13, u13
MATCH (s13:Space {id: 13})
MERGE (b13)-[:BOOKED_FOR]->(s13)
MERGE (t1:Timeslot {slot: '09_10'})
MERGE (b13)-[:HOUR_BOOKED_FOR]->(t1)
WITH b13, u13, s13
// Count relationships using pattern comprehension
SET b13.totalDuration = SIZE([(b13)-[:HOUR_BOOKED_FOR]->() | 1])
// Fix CASE logic (use totalDuration, not spacePrice)
SET b13.spacePrice = CASE
  WHEN b13.totalDuration < 12 THEN s13.hourlyRate * b13.totalDuration
  WHEN b13.totalDuration = 12 THEN s13.halfdayRate
  WHEN b13.totalDuration = 24 THEN s13.fulldayRate
  ELSE s13.halfdayRate + (s13.hourlyRate * (b13.totalDuration - 12))
END
SET b13.sysFee = b13.spacePrice * 0.03
SET b13.totalPrice = b13.spacePrice + b13.sysFee
SET u13.numOfBookings = u13.numOfBookings + 1
SET u13.totalSpent = u13.totalSpent + b13.totalPrice
SET u13:Customer
// Continue with remaining relationships
MERGE (d13:Day {day: 
    CASE date(b13.bookingDate).dayOfWeek
        WHEN 1 THEN 'Monday'
        WHEN 2 THEN 'Tuesday'
        WHEN 3 THEN 'Wednesday'
        WHEN 4 THEN 'Thursday'
        WHEN 5 THEN 'Friday'
        WHEN 6 THEN 'Saturday'
        ELSE 'Sunday'
    END})
ON CREATE SET
    d13.numOfBookings = 0,
    d13.totalSpent = 0.0
MERGE (b13)-[:DAY_OF_THE_WEEK]->(d13)
MERGE (m13:Month {month: 
    CASE date(b13.bookingDate).month
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
    END, year: date(b13.bookingDate).year, numMonth: date(b13.bookingDate).month})
ON CREATE SET
    m13.numOfBookings = 0,
    m13.totalSpent = 0.0
MERGE (b13)-[:MONTH]->(m13)
MERGE (y13:Year {year: date(b13.bookingDate).year})
ON CREATE SET
    y13.numOfBookings = 0,
    y13.totalSpent = 0.0
MERGE (b13)-[:YEAR]->(y13)
MERGE (y13)-[:YEAR_OF]->(m13)
MERGE (se13:Season {season: 
  CASE 
    WHEN date(b13.bookingDate).month IN [1,2,3] THEN 'Winter'
    WHEN date(b13.bookingDate).month IN [4,5,6] THEN 'Spring'
    WHEN date(b13.bookingDate).month IN [7,8,9] THEN 'Summer'
    ELSE 'Fall' 
  END})
ON CREATE SET
    se13.numOfBookings = 0,
    se13.totalSpent = 0.0
MERGE (b13)-[:SEASON]->(se13)
SET d13.numOfBookings = d13.numOfBookings + 1
SET d13.totalSpent = d13.totalSpent + b13.totalPrice
SET m13.numOfBookings = m13.numOfBookings + 1
SET m13.totalSpent = m13.totalSpent + b13.totalPrice
SET y13.numOfBookings = y13.numOfBookings + 1
SET y13.totalSpent = y13.totalSpent + b13.totalPrice
SET se13.numOfBookings = se13.numOfBookings + 1
SET se13.totalSpent = se13.totalSpent + b13.totalPrice
WITH b13, u13, s13, d13, m13, y13, se13
MATCH (s13)-[:IN_PRICE_RANGE]->(pr13)
SET pr13.numOfBookings = pr13.numOfBookings + 1
SET pr13.totalSpent = pr13.totalSpent + b13.totalPrice
// cancel booking
WITH b13, u13, d13, m13, y13, se13, s13
MATCH (b13:Booking {id: 13})
SET u13.numOfBookings = u13.numOfBookings - 1
SET u13.totalSpent = u13.totalSpent - b13.totalPrice
SET d13.numOfBookings = d13.numOfBookings - 1
SET d13.totalSpent = d13.totalSpent - b13.totalPrice
SET m13.numOfBookings = m13.numOfBookings - 1
SET m13.totalSpent = m13.totalSpent - b13.totalPrice
SET y13.numOfBookings = y13.numOfBookings - 1
SET y13.totalSpent = y13.totalSpent - b13.totalPrice
SET se13.numOfBookings = se13.numOfBookings - 1
SET se13.totalSpent = se13.totalSpent - b13.totalPrice
WITH b13, u13, s13
MATCH (s13)-[:IN_PRICE_RANGE]->(pr13)
SET pr13.numOfBookings = pr13.numOfBookings - 1
SET pr13.totalSpent = pr13.totalSpent - b13.totalPrice
SET b13:Cancelled

