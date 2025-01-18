import 'package:flutter/material.dart';

enum ServiceCategory { Hair, Nails, Eyebrows, Skincare, Makeup, Massage, Other }

class SalonService {
  final int id;
  final String name;
  final String description;
  final double price;
  final Duration duration;
  final ServiceCategory category;
  final IconData icon;

  SalonService({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.duration,
    required this.category,
    required this.icon,
  });

  void displayServiceInfo() {
    print('Service: $name');
    print('Description: $description');
    print('Price: \$${price.toStringAsFixed(2)}');
    print('Duration: ${duration.inMinutes} minutes');
    print('Category: ${category.name}');
  }
}
