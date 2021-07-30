import 'package:flutter/material.dart';
import 'package:nimu_pay/components/body_contents.dart';
import 'package:nimu_pay/components/sidebar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SideMenu(),
            ),
            Expanded(
              flex: 5,
              child: BodyContents(),
            ),
          ],
        ),
      ),
    );
  }
}
