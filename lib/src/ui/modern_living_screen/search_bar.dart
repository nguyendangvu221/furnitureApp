import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 15.r),
        filled: true,
        fillColor: Colors.grey.withOpacity(0.2),
        prefixIcon: IconButton(
          onPressed: (() {}),
          icon: Image(
            image: const AssetImage("asset/image_png/search.png"),
            height: 20.h,
            width: 20.w,
            color: Colors.grey,
          ),
        ),
        hintText: "Search",
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15.r),
        ),
      ),
    );
  }
}
