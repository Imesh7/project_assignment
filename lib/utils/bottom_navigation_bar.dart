import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:project_assignment/screens/bookings_screen.dart';
import 'package:project_assignment/screens/find_screen.dart';
import 'package:project_assignment/screens/more_screen.dart';
import 'package:project_assignment/screens/notification_screen.dart';
import 'package:project_assignment/screens/saved_screen.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _currentIndex = 0;

 final List _screens = const <Widget>[
     FindScreen(),
    BookingScreen(),
    SavedScreen(),
    NotificationScreen(),
    MoreScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [..._screens.map((e) => e).toList()],
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: onTabItem,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(Icons.saved_search),
              label: 'Find',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Bookings',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: Badge(
                
                badgeContent: const Text('1'),
                child: const Icon(Icons.notifications),
              ),
              label: 'Notifications',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.more),
              label: 'More',
            ),
          ]),
    );
  }

  void onTabItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
