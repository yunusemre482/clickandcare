import 'package:flutter/material.dart';
import 'activity_item.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Recent Activity',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 16),
        ActivityItem(
          title: 'Booking: Haircut',
          description: 'You booked a haircut at Serenity Salon.',
          time: '1 hour ago',
        ),
        Divider(),
        ActivityItem(
          title: 'Review Added',
          description: 'You reviewed Rituals Salon with 5 stars.',
          time: '2 days ago',
        ),
        Divider(),
        ActivityItem(
          title: 'Favorite Salon',
          description: 'You added Nail Haven to your favorites.',
          time: '3 days ago',
        ),
      ],
    );
  }
}
