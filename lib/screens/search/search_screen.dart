import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/search/widgets/find_tickets.dart';
import 'package:ticket_app/screens/search/widgets/ticket_promotion.dart';

import '../../base/widgets/app_double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColour,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 10),
          Text(
            "What are you\nlooking for?",
            style: AppStyles.headLineStyle1.copyWith(fontSize: 35),
          ),
          const SizedBox(height: 10),
          const AppTicketTabs(firstT: "Tickets", secondT: "Hotels"),
          const SizedBox(height: 20),
          const AppTextIcon(
              iconData: Icons.flight_takeoff_rounded, text: "Departure"),
          const SizedBox(height: 10),
          const AppTextIcon(
              iconData: Icons.flight_land_rounded, text: "Arrivals"),
          const SizedBox(height: 30),
          const FindTickets(),
          const SizedBox(height: 40),
          AppDoubleText(
            func: () => Navigator.pushNamed(context, "/all_tickets"),
            bigT: 'Upcoming Flights',
            smallT: 'View all',
          ),
          const SizedBox(height: 15),
          const TicketPromotion()
        ],
      ),
    );
  }
}
