class LoginResponseDTO {
  String email;
  String password;
  String token;

  LoginResponseDTO({
    required this.email,
    required this.password,
    required this.token,
  });

  factory LoginResponseDTO.fromJson(Map<String, dynamic> json) {
    return LoginResponseDTO(
      email: json['email'] as String,
      password: json['password'] as String,
      token: json['token'] as String,
    );
  }
}
