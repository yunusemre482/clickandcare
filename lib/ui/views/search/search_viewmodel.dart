import 'package:clickandcare/models/salon.model.dart';
import 'package:clickandcare/services/salon_service.dart';
import 'package:stacked/stacked.dart';

class SearchViewModel extends BaseViewModel {
  final SalonService _salonService = SalonService();
  final tabs = ['Haircut', 'Blowout', 'Nail', 'Massage', 'Facial'];

  String selectedTab = 'Haircut';
  List<Salon> salons = [];
  bool isLoading = true; // Add a loading state

  void initialize() async {
    setBusy(true); // Indicate the ViewModel is busy
    await fetchSalons();
    setBusy(false); // Indicate the ViewModel is ready
  }

  Future<void> fetchSalons() async {
    isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 500)); // Simulate a delay
    salons = _salonService.getSalonsForTab(selectedTab);
    isLoading = false;
    notifyListeners();
  }

  void changeTab(String tab) async {
    selectedTab = tab;
    fetchSalons();
  }
}
