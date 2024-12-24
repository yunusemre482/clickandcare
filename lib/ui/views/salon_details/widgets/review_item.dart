import 'package:flutter/material.dart';

class ReviewItem extends StatelessWidget {
  final String name;
  final String date;
  final String review;
  final String imageUrl;
  final int rating;
  final int likes;
  final int comments;

  const ReviewItem({
    Key? key,
    required this.name,
    required this.date,
    required this.review,
    required this.imageUrl,
    required this.rating,
    required this.likes,
    required this.comments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ClipOval(
              child: Image.network(
                imageUrl,
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          review,
          style: const TextStyle(fontSize: 14),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Row(
              children: [
                const Icon(Icons.thumb_up_alt_outlined, size: 16),
                const SizedBox(width: 4),
                Text('$likes'),
              ],
            ),
            const SizedBox(width: 16),
            Row(
              children: [
                const Icon(Icons.comment, size: 16),
                const SizedBox(width: 4),
                Text('$comments'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}