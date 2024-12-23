import 'package:clickandcare/models/salon.model.dart';

class SalonService {
  // Simulated data for each tab
  List<Salon> getSalonsForTab(String tabName) {
    switch (tabName) {
      case 'Haircut':
        return [
          Salon(
            name: 'Maison de Cheveux',
            location: 'West Village, New York',
            rating: '4.9 (12k)',
            image: 'https://via.placeholder.com/400x200',
          ),
          Salon(
            name: 'Drybar',
            location: 'Upper East Side, New York',
            rating: '4.8 (10k)',
            image:
                'https://luxurylondon.co.uk/wp-content/uploads/2022/08/skin-matters-notting-hill-1216x0-c-default.jpg',
          ),
        ];
      case 'Blowout':
        return [
          Salon(
            name: 'Blowout Salon',
            location: 'Brooklyn, New York',
            rating: '4.6 (8k)',
            image:
                'https://luxurylondon.co.uk/wp-content/uploads/2022/08/still-dalston-salon-review-836x0-c-default.jpeg',
          ),
        ];
      case 'Massage':
        return [
          Salon(
            name: 'Massage Haven',
            location: 'Midtown, New York',
            rating: '4.7 (9k)',
            image:
                'https://luxurylondon.co.uk/wp-content/uploads/2023/07/linnaean-nine-elms-1216x0-c-default.jpg',
          ),
        ];
      // Add more cases for other tabs
      default:
        return [];
    }
  }
}
