class UserEntity {
  String email;
  String password;

  UserEntity({
    required this.email,
    required this.password,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) {
    return UserEntity(
      email: json['email'] as String,
      password: json['password'] as String,
    );
  }
}
