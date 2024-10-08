import 'package:flutter/material.dart';

import '../../../base/res/media.dart';
import '../../../base/res/styles/app_styles.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          width: size.width * 0.42,
          height: 405,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 2
                )
              ]
          ),
          child: Column(
            children: [
              Container(
                height: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(fit: BoxFit.cover,
                        image: AssetImage(
                            AppMedia.planeseating
                        ))
                ),
              ),
              const SizedBox(height: 5,),
              Text("Book your ticket early to receive 30% discount!!!",
                style: AppStyles.headLineStyle2,)
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  width: size.width * .44,
                  height: 180,
                  decoration: BoxDecoration(
                      color: const Color(0xFF3AB8B8),
                      borderRadius: BorderRadius.circular(18)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Quick\nSurvey",
                          style: AppStyles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          )),
                      const SizedBox(height: 20),
                      Text("Complete the survey to get a discount!!!",
                          style: AppStyles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 14
                          ))
                    ],
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -45,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 18,
                            color: AppStyles.circleCol
                        )
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              width: size.width * 0.44,
              height: 210,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: const Color(0xFFEC6545)
              ),
              child: Column(
                children: [
                  Text(
                    "Monthly Discount",
                    style: AppStyles.headLineStyle2.copyWith(
                        color: Colors.white
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
