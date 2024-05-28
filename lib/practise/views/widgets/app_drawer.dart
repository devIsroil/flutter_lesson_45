import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/settings_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: DrawerHeader(
        child: Column(
          children: [
            const Text('Menyu'),
            ListTile(
              onTap: () => Navigator.of(context).pushReplacement(
                CupertinoPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              ),
              title: const Text('Home'),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushReplacement(
                CupertinoPageRoute(
                  builder: (context) => const SettingsScreen(),
                ),
              ),
              title: const Text('Settings'),
            )
          ],
        ),
      ),
    );
  }
}