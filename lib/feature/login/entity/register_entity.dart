class RegisterEntity {
  final String name;
  final String password;
  final String birthday;
  final String email;

  RegisterEntity({
    required this.name,
    required this.password,
    required this.birthday,
    required this.email,
  });

  factory RegisterEntity.fromJson(Map<String, dynamic> json) => RegisterEntity(
        name: json['name'] as String,
        password: json['password'] as String,
        birthday: json['birthday'] as String,
        email: json['email'] as String,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'password': password,
        'birthday': birthday,
        'email': email,
      };
}
