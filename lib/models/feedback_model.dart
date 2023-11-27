class FeedbackModel {
  final String name;
  final String email;
  final String phoneNumber;
  final String message;

  FeedbackModel({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.message,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'message': message,
    };
  }
}
