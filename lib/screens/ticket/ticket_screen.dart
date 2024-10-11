import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_layoutbuild_wid.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';

import '../../base/widgets/app_column_text_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColour,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 40),
          Text("Tickets", style: AppStyles.headLineStyle1),
          const SizedBox(height: 20),
          const AppTicketTabs(firstT: "Upcoming", secondT: "Previous"),
          const SizedBox(height: 20),
          Container(
              padding: const EdgeInsets.only(left: 16),
              child: TicketView(ticket: ticketList[0], isColor: true)),
          const SizedBox(
            height: 1,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            color: Colors.white,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topV: "Mrs. Umbreen",
                      botV: "Passenger",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnTextLayout(
                      topV: "AP 7550045",
                      botV: "Passport",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const AppLayoutbuildWid(
                    randomDivid: 15, width: 5, isColor: false),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topV: "SP8472499",
                      botV: "E-Ticket No.",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnTextLayout(
                      topV: "748DD940",
                      botV: "Booking No.",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const AppLayoutbuildWid(
                    randomDivid: 15, width: 5, isColor: false),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(AppMedia.visaSymbol, scale: 10),
                            SizedBox(
                              height: 10,
                            ),
                            Text("**** 4892", style: AppStyles.headLineStyle3)
                          ],
                        ),
                        Text("Payment Method", style: AppStyles.headLineStyle4)
                      ],
                    ),
                    const AppColumnTextLayout(
                      topV: "\$429.99",
                      botV: "Booking Cost",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
          //Bottom of the Container
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21))),
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: BarcodeWidget(
                  barcode: Barcode.code128(),
                  data:
                      'https://github.com/OsamaNajeeb',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
