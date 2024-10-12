import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_layoutbuild_wid.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/ticket/widget/ticket_positioned_circle.dart';

import '../../base/widgets/app_column_text_layout.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {

  late int ticketIndex = 0;

  @override
  void didChangeDependencies() {
    if(ModalRoute.of(context)!.settings.arguments != null){
      var arg = ModalRoute.of(context)!.settings.arguments as Map;
      ticketIndex = arg["index"];
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColour,
      appBar: AppBar(
        title: const Text("Ticket"),
        backgroundColor: AppStyles.bgColour,
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(20),
            children: [
              // const SizedBox(height: 40),
              // Text("Tickets", style: AppStyles.headLineStyle1),
              // const SizedBox(height: 20),
              const AppTicketTabs(firstT: "Upcoming", secondT: "Previous"),
              const SizedBox(height: 20),
              Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: TicketView(ticket: ticketList[ticketIndex], isColor: true)),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
                                const SizedBox(
                                  height: 10,
                                ),
                                Text("**** 4892",
                                    style: AppStyles.headLineStyle3)
                              ],
                            ),
                            Text("Payment Method",
                                style: AppStyles.headLineStyle4)
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
              const SizedBox(
                height: 2,
              ),
              //Bottom of the Container
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(21),
                        bottomLeft: Radius.circular(21))),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: BarcodeWidget(
                    height: 70,
                    barcode: Barcode.code128(),
                    data:
                        'https://www.deviantart.com/motherlicious/art/Mrs-Umbreen-and-Mrs-Hana-Front-View-Updated-979099381',
                    drawText: false,
                    color: AppStyles.textColor,
                    width: double.infinity,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: TicketView(ticket: ticketList[ticketIndex])),
            ],
          ),
          const TicketPositionedCircle(isStupid: true),
          const TicketPositionedCircle(isStupid: null)
        ],
      ),
    );
  }
}
