import 'package:flutter/material.dart';

class SendingHistory extends StatelessWidget {
  const SendingHistory({
    Key? key,
    @required this.name,
    @required this.email,
    @required this.money,
  }) : super(key: key);
  final name;
  final email;
  final money;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white70, fontSize: 14),
        ),
        Text(
          email,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white70, fontSize: 14),
        ),
        Text(
          money,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white70, fontSize: 14),
        ),
      ],
    );
  }
}
