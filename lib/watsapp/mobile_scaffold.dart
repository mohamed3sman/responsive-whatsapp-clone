import 'package:flutter/material.dart';
import 'package:watsapp_clone/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watsapp_clone/mobile_pages/call_page.dart';
import 'package:watsapp_clone/mobile_pages/chat_page.dart';
import 'package:watsapp_clone/mobile_pages/status_page.dart';

import '../mobile_pages/community_page.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        backgroundColor: bodyBackgroundColor,
        appBar: AppBar(
          leadingWidth: MediaQuery.of(context).size.width / 3,
          backgroundColor: appBarBackgroundColor,
          bottom: TabBar(
              labelColor: mainColor,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                    child: Image.asset(
                  'assets/icons/people.png',
                  width: 23.w,
                )),
                const CustomTab(text: 'Chats'),
                const CustomTab(text: 'Status'),
                const CustomTab(text: 'Calls'),
              ]),
          leading: Padding(
            padding: EdgeInsets.all(12.sp),
            child: Text(
              'WhatsApp',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
          actions: const [
            ActionsIcon(icon: Icons.camera_alt_outlined),
            ActionsIcon(icon: Icons.search_rounded),
            ActionsIcon(icon: Icons.more_vert_rounded),
          ],
        ),
        body: const TabBarView(
            children: [CommunityPage(), ChatPage(), StatusPage(), CallPage()]),
      ),
    );
  }
}
