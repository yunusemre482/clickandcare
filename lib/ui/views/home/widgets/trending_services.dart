import 'package:clickandcare/models/service.model.dart';
import 'package:flutter/material.dart';

class TrendingServices extends StatelessWidget {
  final List<Service> services;

  const TrendingServices({required this.services, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Trending services',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        GridView.builder(
          shrinkWrap:
              true, // Allows the GridView to fit its children in a parent with limited space.
          physics:
              const NeverScrollableScrollPhysics(), // Prevents the GridView from scrolling independently.
          itemCount:
              services.length, // Ensures the GridView renders all the services.
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns in the grid.
            crossAxisSpacing: 16, // Horizontal spacing between grid items.
            mainAxisSpacing: 16, // Vertical spacing between grid items.
            childAspectRatio:
                0.75, // Aspect ratio of each grid item (adjust as needed).
          ),
          itemBuilder: (context, index) {
            final service = services[
                index]; // Retrieve the service item for the current index.

            return Column(
              children: [
                ClipOval(
                  child: Image.network(
                    service.imageUrl,
                    height: 80,
                    width: 80,
                    fit: BoxFit
                        .cover, // Ensures the image covers the circular container.
                    errorBuilder: (context, error, stackTrace) => const Icon(
                      Icons
                          .image_not_supported, // Fallback icon for image loading errors.
                      size: 80,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  service.name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center, // Aligns the text in the center.
                ),
                Text(
                  service.price,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center, // Aligns the text in the center.
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
