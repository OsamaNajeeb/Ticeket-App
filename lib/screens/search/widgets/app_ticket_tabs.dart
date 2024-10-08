import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstT;
  final String secondT;
  const AppTicketTabs({super.key, required this.firstT, required this.secondT});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFF4F6F0)),
      child:  Row(
        children: [
          AppTabs(
            tabString: firstT,
          ),
          AppTabs(
            tabString: secondT,
            tabBorder: true,
            tabColor: true,
          )
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  final String tabString;
  final bool tabBorder;
  final bool tabColor;
  const AppTabs(
      {super.key,
      this.tabString = "",
      this.tabBorder = false,
      this.tabColor = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      width: size.width * 0.44,
      decoration: BoxDecoration(
          color: tabColor == false ? Colors.white : Colors.transparent,
          borderRadius: tabBorder == false
              ? const BorderRadius.horizontal(left: Radius.circular(50))
              : const BorderRadius.horizontal(right: Radius.circular(50))),
      child: Center(child: Text(tabString)),
    );
  }
}
