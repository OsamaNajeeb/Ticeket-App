import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.width.toInt());
    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child: Container(
        color: Colors.red,
        child: Text("data"),
      ),
    );
  }
}