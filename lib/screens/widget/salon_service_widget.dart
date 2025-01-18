import 'package:cr_beauty_hub/domains/salon_services.dart';
import 'package:flutter/material.dart';

class SalonServiceWidget extends StatelessWidget {
  final List<SalonService> services;

  const SalonServiceWidget({super.key, required this.services});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
            childAspectRatio: 0.8,
          ),
          itemCount: services.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.lightBlue[50],
                  child: Icon(
                    services[index].icon,
                    size: 30,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  services[index].name,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
