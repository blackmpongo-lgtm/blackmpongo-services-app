# Firestore Appointments Collection Structure

The Firestore appointments collection is structured to store information related to appointments. Each appointment document within the collection consists of the following fields:

## Fields

1. **customer**  
   - Type: `String`  
   - Description: The name or identifier of the customer who made the appointment.

2. **official**  
   - Type: `String`  
   - Description: The name or identifier of the official or representative handling the appointment.

3. **date**  
   - Type: `Date`  
   - Description: The date of the appointment.

4. **time**  
   - Type: `String`  
   - Description: The time of the appointment in HH:MM format.

5. **service**  
   - Type: `String`  
   - Description: The type of service being provided during the appointment.

6. **status**  
   - Type: `String`  
   - Description: The current status of the appointment (e.g., scheduled, completed, canceled).