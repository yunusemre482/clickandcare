import 'package:clickandcare/models/activity.model.dart';

class ProfileService {
  final List<Activity> activities = [
    Activity(
      title: 'Booking: Haircut',
      description: 'You booked a haircut at Serenity Salon.',
      time: '1 hour ago',
      type: ActivityType.booking,
      icon: 'https://example.com/haircut-icon.png',
    ),
    Activity(
      title: 'Review Added',
      description: 'You reviewed Rituals Salon with 5 stars.',
      time: '2 days ago',
      type: ActivityType.review,
      icon: 'https://example.com/review-icon.png',
    ),
    Activity(
      title: 'Favorite Salon',
      description: 'You added Nail Haven to your favorites.',
      time: '3 days ago',
      type: ActivityType.favorite,
      icon: 'https://example.com/favorite-icon.png',
    ),
  ];
}
