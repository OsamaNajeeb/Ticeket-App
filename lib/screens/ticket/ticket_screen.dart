import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColour,
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          const SizedBox(height: 40),
          Text("Tickets", style: AppStyles.headLineStyle1),
          const SizedBox(height: 20),
          const AppTicketTabs(firstT: "Upcoming", secondT: "Previous")
        ],
      ),
    );
  }
}
