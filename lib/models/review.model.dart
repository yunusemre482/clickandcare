class Review {
  final String name;
  final String date;
  final String review;
  final String imageUrl;
  final int rating;
  final int likes;
  final int comments;

  Review({
    required this.name,
    required this.date,
    required this.review,
    required this.imageUrl,
    required this.rating,
    required this.likes,
    required this.comments,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      name: json['name'],
      date: json['date'],
      review: json['review'],
      imageUrl: json['imageUrl'],
      rating: json['rating'],
      likes: json['likes'],
      comments: json['comments'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'date': date,
      'review': review,
      'imageUrl': imageUrl,
      'rating': rating,
      'likes': likes,
      'comments': comments,
    };
  }
}
