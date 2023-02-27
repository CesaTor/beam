import 'package:flutter/material.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.airplane_ticket),
        ),
        BottomNavigationBarItem(
          label: 'Esplora',
          icon: Icon(Icons.airplane_ticket),
        ),
        BottomNavigationBarItem(
          label: 'Feed',
          icon: Icon(Icons.airplane_ticket),
        ),
      ],
    );
  }
}
