import 'package:clickandcare/models/review.model.dart';
import 'package:clickandcare/models/salon.model.dart';
import 'package:clickandcare/models/service.model.dart';
import 'package:clickandcare/models/staff.model.dart';

class SalonService {
  // Simulated list of all salons
  final List<Salon> allSalons = [
    Salon(
      id: '1',
      name: 'Maison de Cheveux',
      // generate a random meaningful for demonstration
      description: 'A luxury salon for haircuts and coloring',
      location: 'West Village, New York',
      rating: '4.9 (12k)',
      image:
          'https://luxurylondon.co.uk/wp-content/uploads/2023/07/linnaean-nine-elms-1216x0-c-default.jpg',
    ),
    Salon(
      id: '2',
      name: 'Drybar',
      description: 'A blowout salon for a quick hair fix',
      location: 'Upper East Side, New York',
      rating: '4.8 (10k)',
      image:
          'https://media.istockphoto.com/id/1463137828/tr/foto%C4%9Fraf/3d-render-of-beauty-spa-saloon.jpg?s=2048x2048&w=is&k=20&c=WUnECWFPHxh-odesbeaDEgK4QrA-GgXKDjghfOihQvM=',
    ),
    Salon(
      id: '3',
      name: 'Blowout Salon',
      description: 'A salon for blowouts and styling',
      location: 'Brooklyn, New York',
      rating: '4.6 (8k)',
      image:
          'https://luxurylondon.co.uk/wp-content/uploads/2022/08/still-dalston-salon-review-836x0-c-default.jpeg',
    ),
    Salon(
      id: '4',
      name: 'Nail Bar',
      description: 'A nail salon for manicures and pedicures',
      location: 'Soho, New York',
      rating: '4.7 (9k)',
      image:
          'https://www.thesalonbusiness.com/wp-content/uploads/2022/07/How-to-Start-a-Nail-Salon-Business.jpg',
    ),
    Salon(
      id: '5',
      name: 'Drybar',
      description: 'A blowout salon for a quick hair fix',
      location: 'Upper East Side, New York',
      rating: '4.8 (10k)',
      image:
          'https://media.istockphoto.com/id/1463137828/tr/foto%C4%9Fraf/3d-render-of-beauty-spa-saloon.jpg?s=2048x2048&w=is&k=20&c=WUnECWFPHxh-odesbeaDEgK4QrA-GgXKDjghfOihQvM=',
    ),
    Salon(
      id: '6',
      name: 'Blowout Salon',
      description: 'A salon for blowouts and styling',
      location: 'Brooklyn, New York',
      rating: '4.9 (12k)',
      image:
          'https://luxurylondon.co.uk/wp-content/uploads/2023/07/linnaean-nine-elms-1216x0-c-default.jpg',
    ),
    Salon(
      id: '7',
      name: 'Nail Bar 3',
      description: 'A nail salon for manicures and pedicures',
      location: 'Soho, New York',
      rating: '4.7 (9k)',
      image:
          'https://www.thesalonbusiness.com/wp-content/uploads/2022/07/How-to-Start-a-Nail-Salon-Business.jpg',
    ),
  ];

  // Get salon details by ID
  Salon? getSalon(String salonId) {
    try {
      return allSalons.firstWhere((salon) => salon.id == salonId);
    } catch (e) {
      // Return null if the salon is not found
      return null;
    }
  }

  // Get salons based on a tab name dynamically
  List<Salon> getSalonsForTab(String tabName) {
    return allSalons.where((salon) {
      switch (tabName.toLowerCase()) {
        case 'haircut':
          return salon.name.contains('Maison') || salon.name.contains('Drybar');
        case 'blowout':
          return salon.name.contains('Blowout');
        case 'nail':
          return salon.name.contains('Nail');
        case 'massage':
          return salon.name.contains('Massage');
        case 'facial':
          return salon.name.contains('Facial');
        default:
          return false;
      }
    }).toList();
  }

  // Get all top-rated salons
  List<Salon> getTopRatedSalons() {
    return allSalons
        .where((salon) =>
            salon.rating.contains('4.8') || salon.rating.contains('4.9'))
        .toList();
  }

  // Get trending services
  List<Service> getTrendingServices() {
    return [
      Service(
        name: 'Gel manicure',
        price: '\$45',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiWspwKWMotSxGd86qqgfxQXXLM_OlAXHeHg&s',
        duration: "1 hour 15 minutes",
      ),
      Service(
        name: 'Acne facial',
        price: '\$55',
        imageUrl:
            'https://www.verywellhealth.com/thmb/8wNZ3Gn92u3BjJsmIUvg7-lmC1o=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/141863195-569fcc5b3df78cafda9e6182.jpg',
        duration: "2 hours and 30 minutes",
      ),
      Service(
        name: 'Acne facial',
        price: '\$55',
        imageUrl:
            'https://www.verywellhealth.com/thmb/8wNZ3Gn92u3BjJsmIUvg7-lmC1o=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/141863195-569fcc5b3df78cafda9e6182.jpg',
        duration: "2 hours and 30 minutes",
      ),
      Service(
        name: 'Acne facial',
        price: '\$55',
        imageUrl:
            'https://www.verywellhealth.com/thmb/8wNZ3Gn92u3BjJsmIUvg7-lmC1o=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/141863195-569fcc5b3df78cafda9e6182.jpg',
        duration: "2 hours and 30 minutes",
      ),
    ];
  }

  // Get services based on a salon ID
  List<Service> getServices(String salonId) {
    // Dummy data for demonstration; can be filtered dynamically based on salonId
    return [
      Service(
        name: 'Haircut',
        price: '\$60',
        duration: "45 minutes",
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG7h6Yf9PqvVszt2ZuO9RQ1E74BvZitNXQkpXr1HGfrrAN6iguK0ULnu6Gpno_6NItUMk&usqp=CAU',
      ),
      Service(
        name: 'Blow out',
        price: '\$80',
        duration: "1 hour",
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG7h6Yf9PqvVszt2ZuO9RQ1E74BvZitNXQkpXr1HGfrrAN6iguK0ULnu6Gpno_6NItUMk&usqp=CAU',
      ),
    ];
  }

  // Get reviews based on a salon ID
  List<Review> getReviews(String salonId) {
    return [
      Review(
        name: 'Katherine',
        date: 'Jan 2022',
        review:
            'I’ve been coming to this salon for years now. Their coloring is the best in the city.',
        imageUrl: 'https://via.placeholder.com/50',
        rating: 5,
        likes: 12,
        comments: 0,
      ),
      Review(
        name: 'Samantha',
        date: 'Jul 2021',
        review: 'The staff here is very friendly and professional.',
        imageUrl: 'https://via.placeholder.com/50',
        rating: 4,
        likes: 23,
        comments: 1,
      ),
    ];
  }

  // Get staff based on a salon ID
  List<Staff> getStaff(String salonId) {
    return [
      Staff(
        name: 'Jenny',
        imageUrl: 'https://via.placeholder.com/50',
        rating: 4.9,
        reviews: 12,
        role: 'Hair Stylist',
      ),
      Staff(
        name: 'Hannah',
        imageUrl: 'https://via.placeholder.com/50',
        rating: 4.8,
        reviews: 15,
        role: 'Color Specialist',
      ),
    ];
  }
}
