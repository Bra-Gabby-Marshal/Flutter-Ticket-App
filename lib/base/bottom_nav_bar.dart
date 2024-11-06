import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ticket_app/screens/home/home_screen.dart';
import 'package:my_ticket_app/screens/search/search_screen.dart';
import 'package:my_ticket_app/screens/ticket/ticket_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // Declaring list for various screens using index
  final appScreens = [
    // const Center(child: Text("Home")),
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const Center(child: Text("Profile"))
  ];

  // Change our index for BottomNavBar
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Center (
      //     child: Text("My Tickets"),)
      // ),
      body: appScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526400),
        showSelectedLabels: false,
        items: const [
          // BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          // BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          // BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket), label: "Tickets"),
          // BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),  // Inactive state icon
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),  // Active state icon
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),  // Inactive state icon
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),  // Active state icon
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),  // Inactive state icon
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),  // Active state icon
            label: "Tickets",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),  // Inactive state icon
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),  // Active state icon
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
