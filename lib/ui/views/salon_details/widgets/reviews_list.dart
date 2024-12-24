import 'package:flutter/material.dart';
import 'review_item.dart';

class ReviewsList extends StatelessWidget {
  const ReviewsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Reviews',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        ReviewItem(
          name: 'Katherine',
          date: 'Jan 2022',
          review:
              'I’ve been coming to this salon for years now. Their coloring is the best in the city.',
          imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3bMXg87RAi_qYZclAg_YtXpjYRcYjBzUtOg&s',
          rating: 5,
          likes: 12,
          comments: 0,
        ),
        Divider(),
        ReviewItem(
          name: 'Samantha',
          date: 'Jul 2021',
          review: 'The staff here is very friendly and professional.',
          imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIcmG6YPvqJb_tIDi_KLkYBIWGHpofqG4pxA&s',
          rating: 4,
          likes: 23,
          comments: 1,
        ),
        Divider(),
        ReviewItem(
          name: 'Hannah',
          date: 'Apr 2021',
          review:
              'I highly recommend Jenny for haircut. She’s been cutting my hair for years.',
          imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToFyMJbmGMENUy7sRbkwvylQoxqyT4y6fyKQ&s',
          rating: 5,
          likes: 45,
          comments: 2,
        ),
      ],
    );
  }
}