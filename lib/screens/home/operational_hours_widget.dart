import 'package:flutter/material.dart';

class OperationalHoursWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[ 
          Text('Operational Hours', style: Theme.of(context).textTheme.headline6),
          SizedBox(height: 8.0),
          Text('Monday to Friday: 08:00 - 16:30'),
          Text('Saturday: 08:00 - 13:00'),
          Text('Sundays: Appointments only'),
        ],
      ),
    );
  }
}