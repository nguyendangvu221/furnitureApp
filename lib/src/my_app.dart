import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/src/ui/build_scaffold/build_scaffold.dart';
import 'package:furniture_app/src/ui/modern_living_screen/modern_living.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => const MaterialApp(home: BuildScaffold()),
      designSize: const Size(390, 844),
    );
    // return const MaterialApp(
    //   home: Scaffold(
    //     body: Center(child: NavigationAppBarButton()),
    //   ),
    // );
  }
}
