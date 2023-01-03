import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watsapp_clone/constants/constants.dart';
import 'package:watsapp_clone/watsapp/Desktop_scaffold.dart';
import 'package:watsapp_clone/watsapp/mobile_scaffold.dart';
import 'package:watsapp_clone/watsapp/watsapp_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          tabBarTheme: TabBarTheme(
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 2, color: mainColor))),
        ),
        debugShowCheckedModeBanner: false,
        home: const WatsappLayout(
            mobileScaffold: MobileScaffold(),
            desktopScaffold: DesktopScaffold()),
      ),
    );
  }
}
