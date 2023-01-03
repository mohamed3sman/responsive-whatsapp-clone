import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => ListTile(
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/profile.jpg'),
          radius: 30,
        ),
        title: Text(
          'Maria',
          style: TextStyle(
              fontSize: 16.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          'Hi, How are you?',
          style: TextStyle(fontSize: 14.sp, color: Colors.grey[400]),
        ),
        contentPadding: EdgeInsets.all(8.sp),
        trailing: Text(
          'Yesterday',
          style: TextStyle(fontSize: 14.sp, color: Colors.grey[400]),
        ),
      ),
    );
  }
}
