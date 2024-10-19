import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/screens/home/all_ticket_screen.dart';
import 'package:ticket_app/screens/home/widgets/all_hotels.dart';
import 'package:ticket_app/screens/hotel_details.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => BottomNavBar(),
        "/all_tickets":(context) => const AllTicketScreen(),
        "/ticket_view":(context) => const TicketScreen(),
        "/all_hotels":(context) => const AllHotels(),
        "/hotel_details":(context) => HotelDetails()
      },
    );
  }
}