import 'package:fintechapp/Screens/Activity/activity.dart';
import 'package:fintechapp/Screens/Home_screen/home_screen.dart';
import 'package:fintechapp/Screens/My_Card_screen/my_card_screen.dart';
import 'package:fintechapp/Screens/ScanPage/scan_page.dart';
import 'package:fintechapp/Screens/profile/profile.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final List<Widget> pages = [
    const HomeScreen(),
    const MyCardScreen(),
    const ScanPage(),
    const ActivityScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            tabItem(Icons.home, 'Home', 0),
            tabItem(Icons.credit_card, 'My Card', 1),
            FloatingActionButton(
              onPressed: () => onTabTapped(2),
              backgroundColor: const Color.fromARGB(158, 23, 27, 97),
              child: const Icon(
                Icons.qr_code_scanner,
                color: Colors.white,
              ),
            ),
            tabItem(Icons.bar_chart, 'Activity', 3),
            tabItem(Icons.person, 'Profile', 4),
          ],
        ),
      ),
    );
  }

  Widget tabItem(IconData icon, String label, int index) {
    return IconButton(
        onPressed: () => onTabTapped(index),
        icon: Column(
          children: [
            Icon(
              icon,
              color: currentIndex == index ? const Color.fromARGB(158, 23, 27, 97) : Colors.grey,
            ),
            Text(label,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: currentIndex == index
                        ? const Color.fromARGB(158, 23, 27, 97)
                        : Colors.green))
          ],
        ));
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
