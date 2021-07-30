import 'package:flutter/material.dart';
import 'package:nimu_pay/components/payment_info_card.dart';

import '../constants.dart';


class Payment extends StatelessWidget {
  const Payment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: defaultPadding * 2.5,
        ),
        PaymentInfoCard(
          imgSrc: 'images/bag.svg',
          text: 'Salary',
          label: 'Belong interactive',
          money: '+\$200',
        ),
        SizedBox(
          width: defaultPadding,
        ),
        PaymentInfoCard(
          imgSrc: 'images/paypal.svg',
          text: 'Paypal',
          label: 'Freelance payments',
          money: '+\$45:00',
        ),
        SizedBox(
          width: defaultPadding,
        ),
        PaymentInfoCard(
          imgSrc: 'images/payoneer.svg',
          text: 'Payoneer',
          label: 'Freelance payments',
          money: '+\$250:00',
        ),
      ],
    );
  }
}
