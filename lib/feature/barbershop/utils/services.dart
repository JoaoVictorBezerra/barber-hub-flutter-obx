class ServiceDTO {
  String name;
  String description;
  int price;

  ServiceDTO({
    required this.name,
    required this.description,
    required this.price,
  });

  factory ServiceDTO.fromJson(Map<String, dynamic> json) {
    return ServiceDTO(
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as int,
    );
  }
}
