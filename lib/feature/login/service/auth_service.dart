import 'dart:convert';

import 'package:barbershop/feature/login/entity/user_response_entity.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

class AuthService {
  static const String host = 'https://barberhub-homolog.up.railway.app';

  Future<UserResponseEntity> login(String email, String password) async {
    final url = Uri.parse('$host/api/auth');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'email': email,
        'password': password,
      }),
    );
    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      final tokenResponse = responseBody['token'];
      final nameResponse = responseBody['name'];

      await saveAuthData(tokenResponse, nameResponse);

      return UserResponseEntity.fromJson(responseBody);
    } else {
      throw Exception('Failed to login');
    }
  }

  saveAuthData(String token, String name) {
    print(token);
    print(name);
    Hive.box('authBox').put('name', name);
    Hive.box('authBox').put('token', token);
  }

  getTokenFromHive() {
    return Hive.box('authBox').get('token');
  }

  getNameFromHive<String>() {
    return Hive.box('authBox').get('name');
  }
}
