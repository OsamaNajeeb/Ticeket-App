import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';


class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, "/hotel_details"),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("All Hotels"),
          backgroundColor: AppStyles.bgColour,
        ),
        backgroundColor: AppStyles.bgColour,
        body: Container(
          margin: const EdgeInsets.only(left: 10),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: GridView.builder(
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: 1.0),
                itemCount: hotelList.length,
                itemBuilder: (context, index) {
                  var singleHotel = hotelList[index];
                  return HotelGridView(hotel: singleHotel, index: index);
                }),
          ),
        ),
      ),
    );
  }
}

class HotelGridView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  final int index;
  const HotelGridView({super.key, required this.hotel, required this.index});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(

      onTap: (){
        // print("$index");
        Navigator.pushNamed(context, "/hotel_details", arguments: {
          "index":index
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        width: size.width * 0.6,
        height: 350,
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
            color: AppStyles.primaryColor,
            borderRadius: BorderRadius.circular(18)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.5,
              child: Container(
                decoration: BoxDecoration(
                    color: AppStyles.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(fit: BoxFit.cover,
                        image: AssetImage(
                            "assets/images/${hotel['image']}"
                        ))
                ),
              ),
            ),
            const SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                hotel['place'],
                style: AppStyles.headLineStyle1.copyWith(
                    fontSize: 12,
                    color: AppStyles.kikiColor
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    hotel['destination'],
                    style: AppStyles.headLineStyle3.copyWith(
                        fontSize: 8,
                        color: Colors.white
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "\$${hotel['price']}/ night",
                    style: AppStyles.headLineStyle1.copyWith(
                        fontSize: 10,
                        color: AppStyles.kikiColor
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
