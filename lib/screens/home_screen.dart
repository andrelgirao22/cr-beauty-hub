import 'package:cr_beauty_hub/domains/salon_services.dart';
import 'package:cr_beauty_hub/infra/repository/salon_service_repository.dart';
import 'package:cr_beauty_hub/screens/widget/salon_service_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<SalonService> services = SalonServiceRepository.getServices();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Welcome(),
            const SizedBox(height: 20.0),
            const Text(
              'O que deseja fazer?',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
            ),
            SalonServiceWidget(services: services),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Buscar"),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendário',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notificações',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ola Samantha',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
            ),
            Text(
              'Procure o serviço que deseja e mime-se',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            print('searching...');
          },
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.teal,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.search, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
