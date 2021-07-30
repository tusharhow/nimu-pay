import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nimu_pay/components/header.dart';
import 'package:nimu_pay/components/sending_history.dart';
import 'package:nimu_pay/constants.dart';
import 'package:nimu_pay/widgets/payment_topbar.dart';
import 'package:nimu_pay/widgets/paymet_history.dart';
import 'package:nimu_pay/widgets/paymet_section.dart';
import '../constants.dart';
import 'line_chart_widget.dart';

class BodyContents extends StatelessWidget {
  const BodyContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(children: [
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Header(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Container(
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: defaultPadding,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: defaultPadding,
                                    ),
                                    Image(
                                      image: AssetImage('images/card.png'),
                                      height: 200,
                                    ),
                                    Payment(),
                                  ],
                                ),
                                SizedBox(
                                  height: defaultPadding * 2,
                                ),
                                PaymentTopBar(),
                                SizedBox(
                                  height: defaultPadding * 2,
                                ),
                                PaymentHistory(),
                              ],
                            ),
                          )),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: defaultPadding,
                                vertical: defaultPadding,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Saved This Month',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white54,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '\$1254',
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    height: 200,
                                    width: double.infinity,
                                    child: Chart(),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Sending History',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 19,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  SendingHistory(
                                      name: 'Zarif',
                                      email: 'zarif@gmail.com',
                                      money: '\$20'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SendingHistory(
                                      name: 'Rabbi',
                                      email: 'rabbi@gmail.com',
                                      money: '\$50'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SendingHistory(
                                      name: 'Salman',
                                      email: 'salman@gmail.com',
                                      money: '\$45'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SendingHistory(
                                      name: 'Tushar',
                                      email: 'tushar@gmail.com',
                                      money: '\$32'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SendingHistory(
                                      name: 'Jenelia',
                                      email: 'jenelia@gmail.com',
                                      money: '\$47'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SendingHistory(
                                      name: 'Emran',
                                      email: 'emran@gmail.com',
                                      money: '\$10'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SendingHistory(
                                      name: 'Nike',
                                      email: 'nike@gmail.com',
                                      money: '\$69'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SendingHistory(
                                      name: 'Bob',
                                      email: 'bob@gmail.com',
                                      money: '\$80'),
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                ]))));
  }
}
