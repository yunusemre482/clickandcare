import 'package:stacked/stacked.dart';

class AppointmentViewModel extends BaseViewModel {
  final List<Map<String, String>> appointments = [
    {
      'salon': 'Serenity Salon',
      'service': 'Haircut',
      'date': 'Tue, Dec 12',
      'time': '10:00 AM',
      'image': 'assets/images/salons/salon1.jpg',
    },
    {
      'salon': 'Rituals Salon',
      'service': 'Coloring',
      'date': 'Wed, Dec 13',
      'time': '2:00 PM',
      'image': 'assets/images/salons/salon2.jpg',
    },
    {
      'salon': 'Nail Haven',
      'service': 'Gel Manicure',
      'date': 'Thu, Dec 14',
      'time': '12:30 PM',
      'image': 'assets/images/salons/salon8.jpg',
    },
  ];
}
