import 'package:flutter/material.dart';

import 'profile_menu.dart';
// import 'profile_pic.dart';
import 'edit_screen.dart';
import 'settings_screen.dart';
import 'logout.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          //  ProfilePage(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: ()  { 
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsUI()),
                  );
              //  Navigator.pushNamed(context, EditProfilePage.routeName);
             },
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {
              SettingsPage();
            },
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {
                LogOut();
            },
          ),
        ],
      ),
    );
  }
}
