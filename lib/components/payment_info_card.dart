import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class PaymentInfoCard extends StatelessWidget {
  const PaymentInfoCard({
    Key? key,
    @required this.imgSrc,
    @required this.text,
    @required this.label,
    @required this.money,
  }) : super(key: key);
  final imgSrc;
  final text;
  final label;
  final money;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 140,
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            imgSrc,
            height: 50,
            color: Colors.white54,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Colors.white54,
            ),
          ),
          Text(
            money,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white54,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
