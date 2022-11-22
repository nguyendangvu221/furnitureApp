import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChairButtonAppBar extends StatelessWidget {
  final int? index;
  final int? selectedIndex;
  final List<String> listChairButton;
  final Function() onPressed;
  const ChairButtonAppBar(
      {required this.index,
      required this.selectedIndex,
      required this.listChairButton,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        // color: Colors.white,
        shape: BoxShape.circle,
      ),
      width: 70.w,
      // height: 80.h,
      child: OutlinedButton(
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.white,
          side: BorderSide(color: Colors.white, width: 1.0.w),
          backgroundColor: selectedIndex == index
              ? Color.fromARGB(255, 47, 42, 146)
              : Colors.white,
          shape: const CircleBorder(),
        ),
        onPressed: onPressed,
        child: Image(
          width: 25.w,
          color: selectedIndex == index ? Colors.white : Colors.black,
          image: AssetImage(
            listChairButton[index!],
          ),
        ),
      ),
    );
  }
}
