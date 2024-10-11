import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuild_wid.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeAssScreen;
  final bool? isColor;
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeAssScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // print(size.width.toInt());
    return SizedBox(
      width: size.width * 0.9,
      height: 182,
      child: Container(
        margin: const EdgeInsets.only(right: 0),
        child: Column(
          children: [
            //Blue Section
            Container(
              margin: EdgeInsets.only(right: wholeAssScreen == true ? 0 : 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor == null ? AppStyles.ticketB : Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  Row(
                    children: [
                      TextStyleThird(
                          text: ticket["from"]["code"], isColor: isColor),
                      Expanded(child: Container()),
                      BigDot(isColor: isColor),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutbuildWid(
                              randomDivid: 6
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.57,
                              child: Icon(Icons.airplanemode_active_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : AppStyles.planeTicketCol),
                            ),
                          )
                        ],
                      )),
                      BigDot(isColor: isColor),
                      Expanded(child: Container()),
                      TextStyleThird(
                          text: ticket["to"]["code"], isColor: isColor)
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                            text: ticket["from"]["name"], isColor: isColor),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(
                          text: ticket["flying_time"], isColor: isColor),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["to"]["name"],
                          isColor: isColor,
                          align: TextAlign.end,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            //Circles
            Container(
              margin: EdgeInsets.only(right: wholeAssScreen == true ? 0 : 16),
              height: 20,
              color: isColor == null ? AppStyles.ticketO : Colors.white,
              child: Row(
                children: [
                  BigCircle(
                    isR: false,
                    isColor: isColor,
                  ),
                  Expanded(
                      child: AppLayoutbuildWid(
                    randomDivid: 16,
                    width: 6,
                        isColor: isColor,
                  )),
                  BigCircle(
                    isR: true,
                    isColor: isColor,
                  ),
                ],
              ),
            ),
            //Orange Section
            Container(
              margin: EdgeInsets.only(right: wholeAssScreen == true ? 0 : 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor==null? AppStyles.ticketO: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor==null?21:0),
                      bottomRight: Radius.circular(isColor==null?21:0))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topV: ticket["date"],
                        botV: "Date",
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      AppColumnTextLayout(
                        topV: ticket["departure_time"],
                        botV: "Departure Time",
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      AppColumnTextLayout(
                        topV: ticket["number"].toString(),
                        botV: "Flight ID",
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
