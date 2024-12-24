import 'package:clickandcare/models/salon.model.dart';
import 'package:clickandcare/ui/views/salon_details/salon_details_view.dart';
import 'package:flutter/material.dart';

class TopRatedSalons extends StatelessWidget {
  final List<Salon> salons;

  const TopRatedSalons({required this.salons, Key? key}) : super(key: key);

  void _goToSalonDetails(BuildContext context, String salonId) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => SalonDetailsView(
              salonId: salonId,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Top rated salons',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: salons.length,
            itemBuilder: (context, index) {
              final salon = salons[index];
              return GestureDetector(
                onTap: () {
                  _goToSalonDetails(context, salon.id);
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          salon.image,
                          height: 140,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        salon.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        salon.rating,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
