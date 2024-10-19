import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/home/widgets/hotel.dart';

import '../../base/widgets/heading_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColour,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: AppStyles.headLineStyle3),
                        const SizedBox(
                          height: 5,
                        ),
                        const HeadingText(text: "Book Tickets", isColor: false),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(AppMedia.logo))),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: const Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text("Search")
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(
                  func: () => Navigator.pushNamed(context, "/all_tickets"),
                  bigT: 'Upcoming Flights',
                  smallT: 'View all',
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ticketList
                          .take(2)
                          .map((singleTicket) => GestureDetector(
                                onTap: () {
                                  var index = ticketList.indexOf(singleTicket);
                                  // print("I'm Tapped $index");
                                  Navigator.pushNamed(context, "/ticket_view",
                                      arguments: {"index": index});
                                },
                                child: TicketView(
                                  ticket: singleTicket,
                                ),
                              ))
                          .toList(),
                    )),
                const SizedBox(height: 5),
                AppDoubleText(
                  func: () => Navigator.pushNamed(context, "/all_hotels"),
                  bigT: 'Hotels',
                  smallT: 'View all',
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: hotelList
                          .take(2)
                          .map((singleHotel) => GestureDetector(
                              child: GestureDetector(
                                  onTap: () {
                                    var index = hotelList.indexOf(singleHotel);
                                    Navigator.pushNamed(
                                        context, "/hotel_details",
                                        arguments: {"index": index});
                                  },
                                  child: Hotel(hotel: singleHotel))))
                          .toList(),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
