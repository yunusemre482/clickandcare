import 'package:flutter/material.dart';
import 'staff_item.dart';

class StaffList extends StatelessWidget {
  const StaffList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Staff',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              StaffItem(
                  name: 'Jenny',
                  imageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSabTekYZGEJYnPaeiGePEM632jJINFOR0-BQ&s'),
              SizedBox(width: 16),
              StaffItem(
                  name: 'Linda',
                  imageUrl:
                      'https://media.istockphoto.com/id/1206174016/photo/smile-of-the-professional.jpg?s=612x612&w=0&k=20&c=SSrrFne1Fw_PSh3nj9P4gRx0gxfjP9mKYx-KQ2Cxu-I='),
              SizedBox(width: 16),
              StaffItem(
                  name: 'Rich',
                  imageUrl:
                      'https://img.freepik.com/premium-photo/beautiful-woman-getting-haircut-by-hairdresser-beauty-salon_230311-26934.jpg'),
            ],
          ),
        ),
      ],
    );
  }
}
