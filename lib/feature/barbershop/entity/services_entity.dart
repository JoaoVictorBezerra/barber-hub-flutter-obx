class BarbershopServiceEntity {
  String name;
  String description;
  double price;

  BarbershopServiceEntity({
    required this.name,
    required this.description,
    required this.price,
  });

  factory BarbershopServiceEntity.fromJson(Map<String, dynamic> json) {
    return BarbershopServiceEntity(
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as double,
    );
  }
}
