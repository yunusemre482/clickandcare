class Appointment {
  final String salon; // The name of the salon.
  final String service; // The type of service (e.g., "Haircut").
  final String date; // The date of the appointment.
  final String time; // The time of the appointment.
  final String imageUrl; // The image URL of the salon or service.

  Appointment({
    required this.salon,
    required this.service,
    required this.date,
    required this.time,
    required this.imageUrl,
  });

  // Factory method to create an Appointment from a map
  factory Appointment.fromMap(Map<String, String> map) {
    return Appointment(
      salon: map['salon']!,
      service: map['service']!,
      date: map['date']!,
      time: map['time']!,
      imageUrl: map['image']!,
    );
  }

  // Convert Appointment to a map
  Map<String, String> toMap() {
    return {
      'salon': salon,
      'service': service,
      'date': date,
      'time': time,
      'image': imageUrl,
    };
  }
}
