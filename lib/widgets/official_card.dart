import 'package:flutter/material.dart';

class OfficialCard extends StatelessWidget {
  final String photoUrl;
  final String name;
  final List<String> specialties;
  final double rating;
  final VoidCallback onSelect;

  OfficialCard({
    required this.photoUrl,
    required this.name,
    required this.specialties,
    required this.rating,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.network(photoUrl, width: 80.0, height: 80.0),
            SizedBox(width: 10.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5.0),
                  Text('Specialties: ${specialties.join(', ')}'),
                  SizedBox(height: 5.0),
                  Text('Rating: ${rating.toString()}'),
                ],
              ),
            ),
            SizedBox(width: 10.0),
            ElevatedButton(
              onPressed: onSelect,
              child: Text('Select'),
            ),
          ],
        ),
      ),
    );
  }
}