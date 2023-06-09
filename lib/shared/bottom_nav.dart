import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.kiwiBird,
                size: 20,
              ),
              label: 'Database/Login1'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.camera,
                size: 20,
              ),
              label: 'Realtime'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.rss,
                size: 20,
              ),
              label: 'About/Feed'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.userCircle,
                size: 20,
              ),
              label: 'Profile '),
        ],
        fixedColor: Colors.deepPurple[200],
        onTap: (int idx) {
          switch (idx) {
            case 0:
              break;
            case 1:
              Navigator.pushNamed(context, '/realtime');
              break;
            case 2:
              Navigator.pushNamed(context, '/about');
              break;
            case 3:
              Navigator.pushNamed(context, '/profile');
              break;
          }
        });
  }
}
