import 'package:flutter/material.dart';
import 'service_item.dart';

class ServicesList extends StatelessWidget {
  const ServicesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Services',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        ServiceItem(name: 'Haircut', price: '\$80', duration: '30 min'),
        Divider(),
        ServiceItem(name: 'Coloring', price: '\$150', duration: '1 hr'),
        Divider(),
        ServiceItem(name: 'Styling', price: '\$120', duration: '45 min'),
      ],
    );
  }
}
