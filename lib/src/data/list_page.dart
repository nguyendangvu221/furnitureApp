import 'package:flutter/cupertino.dart';
import 'package:furniture_app/src/ui/favorite_screen/favorite_page.dart';
import 'package:furniture_app/src/ui/modern_living_screen/modern_living.dart';
import 'package:furniture_app/src/ui/setting_page/setting_page.dart';
import 'package:furniture_app/src/ui/user_page/user_page.dart';

class ListPage {
  List<Widget> pages = [
    const ModernLiving(),
    const FavoritePage(),
    const SettingPage(),
    const UserPage()
  ];
}
