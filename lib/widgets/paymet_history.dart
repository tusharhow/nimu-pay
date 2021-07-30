import 'package:flutter/material.dart';
import 'package:nimu_pay/components/history_items.dart';

import '../constants.dart';

class PaymentHistory extends StatelessWidget {
  const PaymentHistory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        children: [
          HistoryItems(
            imgSrc: 'images/gift.svg',
            label: 'Shopping',
            date: '1 January, 2020',
            money: '\$150',
          ),
          Divider(
            height: 30,
            endIndent: 20,
            color: Colors.white10,
          ),
          HistoryItems(
            imgSrc: 'images/factory.svg',
            label: 'Grocery',
            date: '2 December, 2020',
            money: '\$50',
          ),
          Divider(
            height: 30,
            endIndent: 20,
            color: Colors.white10,
          ),
          HistoryItems(
            imgSrc: 'images/dumbbell.svg',
            label: 'Gym bill',
            date: '1 January, 2018',
            money: '\$200',
          ),
          Divider(
            height: 30,
            endIndent: 20,
            color: Colors.white10,
          ),
          HistoryItems(
            imgSrc: 'images/washing.svg',
            label: 'Laundry',
            date: '20 August, 2020',
            money: '\$90',
          ),
          Divider(
            height: 30,
            endIndent: 20,
            color: Colors.white10,
          ),
          HistoryItems(
            imgSrc: 'images/car.svg',
            label: 'Car wash',
            date: '4 October, 2021',
            money: '\$90',
          ),
          Divider(
            height: 30,
            endIndent: 20,
            color: Colors.white10,
          ),
          HistoryItems(
            imgSrc: 'images/factory.svg',
            label: 'Clothes',
            date: '  10 October, 2021',
            money: '\$100',
          ),
        ],
      ),
    );
  }
}
