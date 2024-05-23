import 'dart:convert';

import 'package:barbershop/feature/barbershop/utils/barbershop.dart';

List<BarberShopDTO> parseJson(String jsonString) {
  return (json.decode(jsonString) as List<dynamic>)
      .map((dynamic shopJson) => BarberShopDTO.fromJson(shopJson))
      .toList();
}

List<BarberShopDTO> dados = parseJson(jason);

const String jason = '''
  [
    {
        "id": "34b31268-6d86-4eee-ad03-c23fa4c81e0f",
        "name": "Viking's Barber",
        "address": "Rua de teste, 1234",
        "description": "Teste",
        "contact": "+351 936 745 672",
        "services": [
            {
                "name": "Corte de Cabelo",
                "description": "Estilo personalizado com as últimas tendências.",
                "price": 45
            }
        ]
    },
    {
        "id": "6aef7c81-fd3d-4a0d-9dcf-8ac3f267c8c2",
        "name": "Sunset Salon",
        "address": "Av. Principal, 567",
        "description": "Salão de beleza especializado em cortes modernos.",
        "contact": "+351 910 123 456",
        "services": [
            {
                "name": "Corte de Cabelo",
                "description": "Corte clássico com atenção aos detalhes.",
                "price": 35
            }
        ]
    },
    {
        "id": "2ecb932b-bd7e-4b9b-bb55-9250d1357c2f",
        "name": "Glamour Hair Studio",
        "address": "Rua das Flores, 789",
        "description": "Um espaço elegante para cuidar da sua beleza.",
        "contact": "+351 925 987 654",
        "services": [
            {
                "name": "Corte de Cabelo",
                "description": "Corte moderno e versátil para qualquer ocasião.",
                "price": 40
            }
        ]
    },
    {
        "id": "cf3e5f32-ffef-4765-bd3d-9b72b9b34a36",
        "name": "Chic Trends",
        "address": "Av. Central, 1011",
        "description": "Tendências da moda em cortes e penteados.",
        "contact": "+351 930 567 890",
        "services": [
            {
                "name": "Corte de Cabelo",
                "description": "Corte personalizado para realçar sua beleza natural.",
                "price": 50
            }
        ]
    },
    {
        "id": "f9b10202-97b7-44b6-a317-fd3d9a408e7b",
        "name": "Divine Hair",
        "address": "Rua dos Anjos, 1314",
        "description": "Um lugar celestial para transformar seu visual.",
        "contact": "+351 918 654 321",
        "services": [
            {
                "name": "Corte de Cabelo",
                "description": "Corte de alta qualidade para clientes exigentes.",
                "price": 55
            }
        ]
    }
  ]
     ''';
