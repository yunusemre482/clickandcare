import 'package:flutter/material.dart';

class HomeTabBar extends StatelessWidget {
  final String selectedTab;
  final Function(String) onTabChange;

  const HomeTabBar(
      {required this.selectedTab, required this.onTabChange, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabs = ['Haircut', 'Blowout', 'Nail', 'Massage', 'Facial'];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: tabs.map((tab) {
          final isActive = tab == selectedTab;
          return GestureDetector(
            onTap: () => onTabChange(tab),
            child: Text(
              tab,
              style: TextStyle(
                color: isActive ? Colors.blue : Colors.grey,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
