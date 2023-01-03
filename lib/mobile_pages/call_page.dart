import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watsapp_clone/constants/constants.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green[500],
            radius: 30.sp,
            child: const Icon(Icons.link, color: Colors.white),
          ),
          title: Text(
            'Create call link',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            'Share a link for you Whatsapp',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15.sp,
            ),
          ),
        ),
        const StatusText(text: 'Recent'),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => CallListTile(
              color: Colors.transparent,
              title: 'Mohamed Osman',
              subtitle: 'Yesterday, 5:25 PM',
              subtitleIcon: Icon(
                Icons.call_received_rounded,
                color: Colors.red,
                size: 18.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
