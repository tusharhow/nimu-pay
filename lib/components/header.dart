import 'package:flutter/material.dart';
import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Dashboard",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        Spacer(
          flex: 2,
        ),
        Expanded(
          child: SearchField(),
        ),
        ProfileCard(),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding, right: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 5,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white70),
      ),
      child: Row(
        children: [
          Image(image: AssetImage('images/person.png'), height: 37),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            child: Text(
              "Tushar Mahmud",
              style: TextStyle(color: Colors.white70),
            ),
          ),
          Icon(Icons.keyboard_arrow_down, color: Colors.white70),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        hintStyle: TextStyle(color: Colors.white70),
        fillColor: secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Icon(Icons.search, color: Colors.white70),
          ),
        ),
      ),
    );
  }
}
