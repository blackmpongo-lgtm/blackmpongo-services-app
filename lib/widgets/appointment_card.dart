import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  final String officialName;
  final DateTime dateTime;
  final String service;
  final String status;
  final VoidCallback onAction;

  AppointmentCard({
    required this.officialName,
    required this.dateTime,
    required this.service,
    required this.status,
    required this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              officialName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Date/Time: ${dateTime.toUtc().toIso8601String()}',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 8),
            Text(
              'Service: $service',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 8),
            Text(
              'Status: $status',
              style: TextStyle(color: Colors.green),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: onAction,
              child: Text('Action'),
            ),
          ],
        ),
      ),
    );
  }
}