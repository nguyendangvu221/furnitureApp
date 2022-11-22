import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarModern extends StatelessWidget {
  final String? nameAppBar;
  const AppBarModern({@required this.nameAppBar, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Text(
          nameAppBar!,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
      titleSpacing: 90.r,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {},
        icon: Image(
          color: Colors.grey,
          width: 22.w,
          image: const AssetImage(
            'asset/image_png/message.png',
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Image(
            color: Colors.grey,
            image: AssetImage("asset/image_png/shopping-bag.png"),
          ),
        )
      ],
    );
  }
}
