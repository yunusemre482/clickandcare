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
            image:
                'https://luxurylondon.co.uk/wp-content/uploads/2023/07/linnaean-nine-elms-1216x0-c-default.jpg',
          ),
          Salon(
            name: 'Drybar',
            location: 'Upper East Side, New York',
            rating: '4.8 (10k)',
            image:
                'https://media.istockphoto.com/id/1463137828/tr/foto%C4%9Fraf/3d-render-of-beauty-spa-saloon.jpg?s=2048x2048&w=is&k=20&c=WUnECWFPHxh-odesbeaDEgK4QrA-GgXKDjghfOihQvM=',
          ),
          Salon(
            name: 'Maison de Cheveux',
            location: 'West Village, New York',
            rating: '4.9 (12k)',
            image:
                'https://luxurylondon.co.uk/wp-content/uploads/2022/08/harrods-spa-knightsbridge-xl-hd-1216x0-c-default.jpg',
          ),
          Salon(
            name: 'Drybar',
            location: 'Upper East Side, New York',
            rating: '4.8 (10k)',
            image:
                'https://luxurylondon.co.uk/wp-content/uploads/2022/08/dryby-marylebone-london-1216x0-c-default.jpg',
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
          Salon(
              name: 'Blowout Bar & Salon NYC',
              location: 'Brooklyn, New York',
              rating: '4.6 (8k)',
              image:
                  'https://media.istockphoto.com/id/119807828/tr/foto%C4%9Fraf/interior-of-modern-apartment-3d-render.jpg?s=2048x2048&w=is&k=20&c=Bq4Ub3S1f8quxl04W4B2-z3fJqmXwIMARr9OjtgqRb8=')
        ];
      case 'Nail':
        return [
          Salon(
            name: 'Nail Haven',
            location: 'Midtown, New York',
            rating: '4.7 (9k)',
            image:
                'https://luxurylondon.co.uk/wp-content/uploads/2022/08/skin-matters-notting-hill-1216x0-c-default.jpg',
          ),
          Salon(
              name: 'Nail Haven',
              location: 'Midtown, New York',
              rating: '4.7 (9k)',
              image:
                  'https://media.istockphoto.com/id/1325440885/tr/foto%C4%9Fraf/retro-styled-beauty-salon.jpg?s=2048x2048&w=is&k=20&c=61lor8Fkv0upqQ5lXkE8QyoDjzPOQBDzdGsw20UhHa8=')
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
      case 'Facial':
        return [
          Salon(
            name: 'Facial Haven',
            location: 'Midtown, New York',
            rating: '4.7 (9k)',
            image:
                'https://luxurylondon.co.uk/wp-content/uploads/2023/08/pfeffer-sal-clinic-london-1216x0-c-default.jpg',
          ),
        ];
      // Add more cases for other tabs
      default:
        return [];
    }
  }
}
