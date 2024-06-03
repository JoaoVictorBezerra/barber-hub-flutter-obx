import 'dart:convert';

import 'package:barbershop/feature/login/service/auth_service.dart';
import 'package:http/http.dart' as http;

import 'package:barbershop/feature/barbershop/entity/barbershop_entity.dart';

class BarbershopService {
  AuthService authService = AuthService();

  static const String host = 'https://barberhub-homolog.up.railway.app';

  Future<List<BarbershopEntity>> getBarbershop() async {
    //String token = authService.getTokenFromHive();
    String token =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJiYXJiZXIiLCJzdWIiOiJkZW1ldHJpb3MuZGVAZ21haWwuY29tIiwiZXhwIjoxNzE3MDM2MjA4LCJyb2xlIjoiVVNFUiJ9.Wois0P8ngn-J4tpzLoDWSQHKrZOFTiYhGqWCtE0S3Y8";
    print(token);
    final url = Uri.parse('$host/api/barbershop');
    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List<dynamic>)
          .map((dynamic shopJson) => BarbershopEntity.fromJson(shopJson))
          .toList();
    } else {
      throw Exception('Failed to fetch barbershop data');
    }
  }

  createBarbershopcard() {
    getBarbershop();
  }
}
