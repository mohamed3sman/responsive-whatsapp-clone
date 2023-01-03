import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:watsapp_clone/constants/constants.dart';
import 'package:watsapp_clone/mobile_pages/chat_page.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bodyBackgroundColor,
        body: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Expanded(
                  child: Column(
                    children: [
                      const WepAppBar(),
                      SizedBox(height: 10.h),
                      const SearchPart(),
                      const Expanded(child: ChatPage())
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: Container(
              color: const Color(0xff222e35),
              child: Column(
                children: [
                  LottieBuilder.asset('assets/lotties/community.json'),
                  Text(
                    'WhatsApp Web',
                    style: TextStyle(
                        color: const Color(0xffa9c1d1),
                        fontSize: 35.sp,
                        fontWeight: FontWeight.w200),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    '     Send and recieve messages without keeping your phone online.\nUse WhatsApp on up to 4 linked deviced and 1 phone at the same time.',
                    style: TextStyle(
                      color: const Color(0xff698993),
                      fontSize: 14.sp,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.lock,
                        color: const Color(0xff698993),
                        size: 13.sp,
                      ),
                      Text(
                        'End-to-end encrypted',
                        style: TextStyle(
                          color: const Color(0xff698993),
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: const Color(0xff008069),
                    height: 20.h,
                    thickness: 4.sp,
                  ),
                ],
              ),
            ))
          ],
        ));
  }
}
