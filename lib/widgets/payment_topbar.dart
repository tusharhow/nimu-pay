import 'package:flutter/material.dart';

import '../constants.dart';

class PaymentTopBar extends StatelessWidget {
  const PaymentTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Recent payments',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Container(
            height: 40,
            width: 120,
            decoration: BoxDecoration(
              color: secondaryColor,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Sort by',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
