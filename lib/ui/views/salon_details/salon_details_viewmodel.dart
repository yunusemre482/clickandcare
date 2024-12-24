import 'package:clickandcare/models/review.model.dart';
import 'package:clickandcare/models/salon.model.dart';
import 'package:clickandcare/models/service.model.dart';
import 'package:clickandcare/models/staff.model.dart';
import 'package:clickandcare/services/salon_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

class SalonDetailsViewModel extends BaseViewModel {
  final log = const StackedLogger(logHelperName: "DmViewModel");

  final SalonService _salonService = SalonService();

  // Variables with proper type declaration and null safety compliance
  List<Review> _reviews = [];
  List<Service> _services = [];
  List<Staff> _staff = [];
  Salon? _salon;

  // Public getters for exposing data
  List<Service> get services => _services;
  List<Staff> get staff => _staff;
  List<Review> get reviews => _reviews;
  Salon? get salon => _salon;

  // Initialize and fetch all data
  Future<void> initialize(String salonId) async {
    setBusy(true); // Stacked's busy state management
    try {
      await Future.wait([
        getSalonDetails(salonId),
        getSalonReviews(salonId),
        getSalonServices(salonId),
        getSalonStaff(salonId),
      ]);
    } catch (e) {
      // Log or handle errors
      print('Error initializing SalonDetailsViewModel: $e');
    } finally {
      setBusy(false); // Clear busy state
    }
  }

  // Fetch salon details
  Future<void> getSalonDetails(String salonId) async {
    _salon = _salonService.getSalon(salonId);
    notifyListeners(); // Notify UI about the change
  }

  // Fetch salon reviews
  Future<void> getSalonReviews(String salonId) async {
    _reviews = _salonService.getReviews(salonId);
    notifyListeners();
  }

  // Fetch salon services
  Future<void> getSalonServices(String salonId) async {
    _services = _salonService.getServices(salonId);
    notifyListeners();
  }

  // Fetch salon staff
  Future<void> getSalonStaff(String salonId) async {
    _staff = _salonService.getStaff(salonId);
    notifyListeners();
  }

  // Add a new review
  void addReview(Review review) {
    _reviews.add(review);
    notifyListeners();
  }
}
