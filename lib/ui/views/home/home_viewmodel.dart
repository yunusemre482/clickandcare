import 'package:clickandcare/models/salon.model.dart';
import 'package:clickandcare/models/service.model.dart';
import 'package:clickandcare/services/salon_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final SalonService _salonService = SalonService();

  List<Salon> getTopRatedSalons() {
    return _salonService.getTopRatedSalons();
  }

  List<Service> getTrendingServices() {
    return _salonService.getTrendingServices();
  }
}
