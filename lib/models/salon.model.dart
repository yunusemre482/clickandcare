class Salon {
  final String id;
  final String name;
  final String description;
  final String location;
  final String rating;
  final String image;

  Salon({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.rating,
    required this.image,
  });

  factory Salon.fromJson(Map<String, dynamic> json) {
    return Salon(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      location: json['location'],
      rating: json['rating'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'location': location,
      'rating': rating,
      'image': image,
    };
  }
}
