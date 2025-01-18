import 'package:cr_beauty_hub/domains/salon_services.dart';
import 'package:flutter/material.dart';

class SalonServiceRepository {
  static List<SalonService> getServices() {
    return [
      SalonService(
        id: 1,
        name: 'Corte',
        description: 'Corte profissional e estilização',
        price: 50.0,
        duration: Duration(minutes: 45),
        category: ServiceCategory.Hair,
        icon: Icons.content_cut,
      ),
      SalonService(
        id: 2,
        name: 'Unhas',
        description: 'Serviço de manicure incluindo modelagem e esmaltação',
        price: 30.0,
        duration: Duration(minutes: 30),
        category: ServiceCategory.Nails,
        icon: Icons.brush,
      ),
      SalonService(
        id: 3,
        name: 'Facial',
        description: 'Tratamento facial completo',
        price: 70.0,
        duration: Duration(minutes: 60),
        category: ServiceCategory.Skincare,
        icon: Icons.face,
      ),
      SalonService(
        id: 4,
        name: 'Coloração',
        description: 'Coloração profissional para cabelos',
        price: 80.0,
        duration: Duration(minutes: 90),
        category: ServiceCategory.Hair,
        icon: Icons.color_lens,
      ),
      SalonService(
        id: 5,
        name: 'Spa',
        description: 'Serviço completo de spa',
        price: 100.0,
        duration: Duration(minutes: 120),
        category: ServiceCategory.Other,
        icon: Icons.spa,
      ),
      SalonService(
        id: 6,
        name: 'Waxing',
        description: 'Serviço de depilação completa',
        price: 40.0,
        duration: Duration(minutes: 30),
        category: ServiceCategory.Other,
        icon: Icons.wash,
      ),
      SalonService(
        id: 7,
        name: 'Makeup',
        description: 'Maquiagem profissional',
        price: 60.0,
        duration: Duration(minutes: 60),
        category: ServiceCategory.Makeup,
        icon: Icons.brush,
      ),
      SalonService(
        id: 8,
        name: 'Massagem',
        description: 'Massagem relaxante',
        price: 90.0,
        duration: Duration(minutes: 60),
        category: ServiceCategory.Massage,
        icon: Icons.mood,
      ),
    ];
  }
}
