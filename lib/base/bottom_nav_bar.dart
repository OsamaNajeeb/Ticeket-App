import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Center(
        child: Text("small data"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.red,
          showSelectedLabels: false,
          items: const[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search),
                label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket),
                label: "Ticket"),
            BottomNavigationBarItem(icon: Icon(Icons.person),
                label: "Profile"),
          ],
      ),
    );
  }
}
