import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class HistoryItems extends StatelessWidget {
  const HistoryItems({
    Key? key,
    @required this.imgSrc,
    @required this.date,
    @required this.label,
    @required this.money,
  }) : super(key: key);

  final imgSrc;
  final date;
  final label;
  final money;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          imgSrc,
          height: 25,
          color: Colors.white54,
        ),
        SizedBox(
          width: defaultPadding * 2,
        ),
        Text(
          label,
          style: TextStyle(
              color: Colors.white54, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: defaultPadding * 8,
        ),
        Text(
          date,
          style: TextStyle(
            color: Colors.white54,
          ),
        ),
        SizedBox(
          width: defaultPadding * 8,
        ),
        Text(
          money,
          style: TextStyle(
              color: Colors.white54, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
