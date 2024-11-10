import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_ticket_app/base/bottom_nav_bar.dart';
import 'package:my_ticket_app/screens/home/all_hotels.dart';
import 'package:my_ticket_app/screens/home/all_tickets.dart';
import 'package:my_ticket_app/screens/profile/profile_screen.dart';
import 'package:my_ticket_app/screens/search/hotel_detail.dart';
import 'package:my_ticket_app/screens/ticket/ticket_screen.dart';
import 'package:get/get.dart';

import 'base/widgets/app_routes.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      // home: const BottomNavBar(),
      routes: {
        AppRoutes.homePage:(context)=> BottomNavBar(),
        AppRoutes.allTicket: (context)=> const AllTickets(),
        AppRoutes.ticketScreen: (context)=> const TicketScreen(),
        AppRoutes.allHotels: (context)=> const AllHotels(),
        AppRoutes.hotelDetail: (context)=> const HotelDetail(),
        AppRoutes.profileScreen: (context)=> const ProfileScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
