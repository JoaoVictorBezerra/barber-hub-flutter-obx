class UserResponseEntity {
  String name;
  String email;
  String token;

  UserResponseEntity({
    required this.name,
    required this.email,
    required this.token,
  });

  factory UserResponseEntity.fromJson(Map<String, dynamic> json) {
    return UserResponseEntity(
      name: json['name'] as String,
      email: json['email'] as String,
      token: json['token'] as String,
    );
  }
}
