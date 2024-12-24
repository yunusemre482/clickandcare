class Service {
  final String name;
  final String price;
  final String imageUrl;
  final String duration;

  Service({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.duration,
  });

  factory Service.fromJson(Map<String, dynamic> json) {
    return Service(
      name: json['name'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      duration: json['duration'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'imageUrl': imageUrl,
      'duration': duration,
    };
  }
}
