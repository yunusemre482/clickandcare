class Staff {
  final String name;
  final String imageUrl;
  final String role; // E.g., "Hair Stylist", "Color Specialist"
  final String bio; // A short biography or description (optional)
  final double rating; // Average rating (optional)
  final int reviews; // Number of reviews (optional)

  Staff({
    required this.name,
    required this.imageUrl,
    required this.role,
    this.bio = '',
    this.rating = 0.0,
    this.reviews = 0,
  });

  factory Staff.fromJson(Map<String, dynamic> json) {
    return Staff(
      name: json['name'],
      imageUrl: json['imageUrl'],
      role: json['role'],
      bio: json['bio'],
      rating: json['rating'],
      reviews: json['reviews'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'role': role,
      'bio': bio,
      'rating': rating,
      'reviews': reviews,
    };
  }
}
