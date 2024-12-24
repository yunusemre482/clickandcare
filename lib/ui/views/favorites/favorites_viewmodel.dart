import 'package:clickandcare/models/salon.model.dart';
import 'package:clickandcare/services/salon_service.dart';
import 'package:stacked/stacked.dart';

class FavoritesViewModel extends BaseViewModel {
  final SalonService _salonService = SalonService();

  // get random salons from the salon service
  List<Salon> favoriteSalons = [];

  FavoritesViewModel() {
    // get all salons then splice it to get random salons
    favoriteSalons = _salonService.allSalons.sublist(0, 3);
  }
}
