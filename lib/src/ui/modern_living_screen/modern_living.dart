import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/src/data/list_chair.dart';
import 'package:furniture_app/src/ui/modern_living_screen/chair_button_app_bar.dart';
import 'package:furniture_app/src/ui/modern_living_screen/search_bar.dart';

class ModernLiving extends StatefulWidget {
  const ModernLiving({super.key});

  @override
  State<ModernLiving> createState() => _ModernLivingState();
}

class _ModernLivingState extends State<ModernLiving> {
  ListChair listChair = ListChair();
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            height: 50.h,
            margin: EdgeInsets.only(top: 40.r, left: 20.r, right: 20.r),
            child: const SearchBar(),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.only(top: 30.r, right: 20, left: 20),
            child: ListView.builder(
              itemBuilder: (context, index) => ChairButtonAppBar(
                index: index,
                selectedIndex: selectedIndex,
                listChairButton: listChair.listChairs,
                onPressed: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
              itemCount: listChair.listChairs.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
