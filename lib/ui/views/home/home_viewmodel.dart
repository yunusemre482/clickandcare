import 'package:clickandcare/models/salon.model.dart';
import 'package:clickandcare/services/salon_service.dart';

import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final SalonService _salonService = SalonService();
  final tabs = ['Haircut', 'Blowout', 'Nail', 'Massage', 'Facial'];

  String selectedTab = 'Haircut';
  List<Salon> salons = [];

  void initialize() {
    fetchSalons();
  }

  void fetchSalons() {
    salons = _salonService.getSalonsForTab(selectedTab);
    notifyListeners();
  }

  void changeTab(String tab) {
    selectedTab = tab;
    fetchSalons();
  }
}
