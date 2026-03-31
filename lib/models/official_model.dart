class OfficialModel {
  final String name;
  final List<String> specialties;
  final List<String> availability;
  final String bio;
  final String contactInfo;

  OfficialModel({
    required this.name,
    required this.specialties,
    required this.availability,
    required this.bio,
    required this.contactInfo,
  });

  // You can add methods for serialization, validation, etc.
}