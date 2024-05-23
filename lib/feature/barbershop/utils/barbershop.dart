import 'package:barbershop/feature/barbershop/utils/services.dart';

class BarberShopDTO {
  String id;
  String name;
  String address;
  String description;
  String contact;
  List<ServiceDTO> services;

  BarberShopDTO({
    required this.id,
    required this.name,
    required this.address,
    required this.description,
    required this.contact,
    required this.services,
  });

  factory BarberShopDTO.fromJson(Map<String, dynamic> json) {
    return BarberShopDTO(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      description: json['description'] as String,
      contact: json['contact'] as String,
      services: (json['services'] as List<dynamic>)
          .map((service) => ServiceDTO.fromJson(service))
          .toList(),
    );
  }
}
