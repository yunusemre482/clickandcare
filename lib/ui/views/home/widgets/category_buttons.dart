import 'package:flutter/material.dart';

class CategoryButtons extends StatelessWidget {
  const CategoryButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categories = ['Haircut', 'Blowout', 'Hair Color', 'Nails'];

    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 0,
              ),
              child: Text(
                categories[index],
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
