import 'package:barbershop/feature/barbershop/entity/services_entity.dart';

class BarbershopEntity {
  final String id;
  final String name;
  final String slug;
  final String imageUrl;
  final String address;
  final String description;
  final String contact;
  final List<BarbershopServiceEntity> services;
  final DateTime createdAt;
  final DateTime updatedAt;

  BarbershopEntity({
    required this.id,
    required this.name,
    required this.slug,
    required this.imageUrl,
    required this.address,
    required this.description,
    required this.contact,
    required this.services,
    required this.createdAt,
    required this.updatedAt,
  });

  factory BarbershopEntity.fromJson(Map<String, dynamic> json) {
    var servicesList = json['services'] as List<dynamic>;
    List<BarbershopServiceEntity> services = servicesList
        .map((serviceJson) => BarbershopServiceEntity.fromJson(serviceJson))
        .toList();

    return BarbershopEntity(
      id: json['id'],
      name: json['name'],
      slug: json['slug'],
      imageUrl: json['imageUrl'],
      address: json['address'],
      description: json['description'],
      contact: json['contact'],
      services: services,
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }
}
