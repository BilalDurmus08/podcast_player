import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class FooterNavBar extends StatefulWidget{
  const FooterNavBar({super.key});
  @override
  State<FooterNavBar> createState() {
    return _FooterNavBarState();
  }
}

class _FooterNavBarState extends State<FooterNavBar>{
    @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).primaryColor,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: GNav(
            color: Color.fromARGB(255, 151, 151, 151),
            activeColor: Colors.white,
            iconSize: 24,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Discover',
              ),
              GButton(
                icon: Icons.contacts_sharp,
                text: 'Library',
              ),
              GButton(
                icon: Icons.account_circle_sharp,
                text: 'Profile',
              ),
            ],
          ),
        ),
      );
  }
}