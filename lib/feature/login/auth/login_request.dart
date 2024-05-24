class LoginRequestDTO {
  String email;
  String password;

  LoginRequestDTO({
    required this.email,
    required this.password,
  });

  factory LoginRequestDTO.fromJson(Map<String, dynamic> json) {
    return LoginRequestDTO(
      email: json['email'] as String,
      password: json['password'] as String,
    );
  }
}
