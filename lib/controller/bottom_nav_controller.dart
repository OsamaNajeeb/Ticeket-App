import 'package:get/get.dart';

class BottomNavCont extends GetxController{
  var selectedIndex = 0.obs;

  void onItemTapped(int index) {
      selectedIndex.value = index;
  }

}