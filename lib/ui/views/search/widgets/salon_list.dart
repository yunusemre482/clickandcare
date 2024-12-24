import 'package:clickandcare/models/salon.model.dart';
import 'package:clickandcare/ui/views/salon_details/salon_details_view.dart';
import 'package:flutter/material.dart';

class SalonList extends StatelessWidget {
  final List<Salon> salons;

  const SalonList({required this.salons, Key? key}) : super(key: key);

  void _goToSalonDetails(BuildContext context, String salonId) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => SalonDetailsView(
              salonId: salonId,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: salons.length,
      itemBuilder: (context, index) {
        final salon = salons[index];
        return GestureDetector(
            onTap: () {
              _goToSalonDetails(context, salon.id);
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(2, 0, 2, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      salon.image,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    salon.name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    salon.location,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    salon.rating,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
