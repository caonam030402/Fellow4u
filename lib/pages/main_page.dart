import 'package:fellow4u/configs/app_icons.dart';
import 'package:fellow4u/pages/chat_page.dart';
import 'package:fellow4u/pages/explore_page.dart';
import 'package:fellow4u/pages/my_trips_page.dart';
import 'package:fellow4u/pages/notifications_page.dart';
import 'package:fellow4u/pages/profile_page.dart';
import 'package:fellow4u/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.ic_explore,
                  color:
                      currentIndex == 0 ? AppColors.primary : AppColors.gray),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.ic_location,
                  color:
                      currentIndex == 1 ? AppColors.primary : AppColors.gray),
              label: 'Location'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.ic_message,
                  color:
                      currentIndex == 2 ? AppColors.primary : AppColors.gray),
              label: 'Message'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.ic_bell,
                  color:
                      currentIndex == 3 ? AppColors.primary : AppColors.gray),
              label: 'Notifition'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.ic_user,
                  color:
                      currentIndex == 4 ? AppColors.primary : AppColors.gray),
              label: 'User')
        ],
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        unselectedItemColor: AppColors.black,
        selectedItemColor: AppColors.primary,
        currentIndex: currentIndex,
        selectedIconTheme: IconThemeData(color: AppColors.primary),
      ),
    );
  }

  final pages = <Widget>[
    ExplorePage(),
    MyTrips(),
    ChatPage(),
    NotificationsPage(),
    ProfilePage(),
  ];
}
