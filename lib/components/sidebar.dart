import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Drawer(
        elevation: 0,
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  'Pay',
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70),
                ),
              ),
            ),
            DrawerListTile(
              title: "Home",
              svgSrc: "images/home.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Messages",
              svgSrc: "images/email.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Notification",
              svgSrc: "images/chat.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Profile",
              svgSrc: "images/user.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Upload",
              svgSrc: "images/upload.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Settings",
              svgSrc: "images/settings.svg",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
