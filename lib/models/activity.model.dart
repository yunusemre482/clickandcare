class Activity {
  final String title; // The title of the activity (e.g., "Booking: Haircut").
  final String description; // A brief description of the activity.
  final String time; // The time of the activity (e.g., "1 hour ago").
  final String icon; // An optional URL for an activity-specific icon.
  final ActivityType type; // The type of activity (enum).

  Activity({
    required this.title,
    required this.description,
    required this.time,
    this.icon = '',
    required this.type,
  });
}

// Enum for defining activity types
enum ActivityType {
  booking, // Represents booking-related activities
  review,  // Represents review-related activities
  favorite // Represents favorite-related activities
}