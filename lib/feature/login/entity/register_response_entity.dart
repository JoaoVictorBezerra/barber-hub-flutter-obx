class RegisterResponseEntity {
  final String message;
  final String timestamp;

  RegisterResponseEntity({
    required this.message,
    required this.timestamp,
  });

  factory RegisterResponseEntity.fromJson(Map<String, dynamic> json) =>
      RegisterResponseEntity(
        message: json['message'] as String,
        timestamp: json['timestamp'] as String,
      );
}
