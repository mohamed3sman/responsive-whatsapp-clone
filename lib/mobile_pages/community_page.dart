import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Lottie.asset(
            'assets/lotties/community.json',
            height: 250.h,
          ),
          Text(
            'Introducing communities',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.sp,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            ' Easily organize your related groups\nand send announcements. Now, your\n communities, like neighborhoods or\n  schools, can have their own space.',
            style: TextStyle(color: Colors.grey, fontSize: 18.sp),
          ),
          SizedBox(
            height: 40.h,
          ),
          MaterialButton(
            color: Colors.greenAccent.shade700,
            textColor: Colors.grey[900],
            padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 12.h),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
            onPressed: () {},
            child: Text(
              'Start your community',
              style: TextStyle(fontSize: 18.sp, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
