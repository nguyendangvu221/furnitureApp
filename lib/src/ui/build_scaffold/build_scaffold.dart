import 'package:flutter/material.dart';
import 'package:furniture_app/src/data/list_AppBar.dart';
import 'package:furniture_app/src/data/list_page.dart';
import 'package:furniture_app/src/ui/Custom_AppBar/appbar_custom.dart';

class BuildScaffold extends StatefulWidget {
  const BuildScaffold({super.key});

  @override
  State<BuildScaffold> createState() => _BuildScaffoldState();
}

class _BuildScaffoldState extends State<BuildScaffold> {
  int currentIndex = 0;
  ListAppBar listAppBar = ListAppBar();
  ListPage listPage = ListPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        // selectedItemColor: Colors.red,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image(
                color: currentIndex == 0 ? Colors.black : Colors.grey,
                width: 20,
                image: const AssetImage("asset/image_png/house.png"),
              ),
              label: ""),
          BottomNavigationBarItem(
            icon: Image(
              color: currentIndex == 1 ? Colors.black : Colors.grey,
              width: 20,
              image: const AssetImage("asset/image_png/heart.png"),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image(
              color: currentIndex == 2 ? Colors.black : Colors.grey,
              width: 20,
              image: const AssetImage("asset/image_png/setting.png"),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image(
              color: currentIndex == 3 ? Colors.black : Colors.grey,
              width: 20,
              image: const AssetImage("asset/image_png/user.png"),
            ),
            label: "",
          ),
        ],
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: listAppBar.appBars[currentIndex],
      ),
      body: listPage.pages[currentIndex],
    );
  }
}
