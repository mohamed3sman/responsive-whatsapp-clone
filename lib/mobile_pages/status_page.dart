import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watsapp_clone/constants/constants.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomListTile(
          color: Colors.grey,
          title: 'My status',
          subtitle: 'Today, 11:13 AM',
        ),
        const StatusText(text: 'Recent updates'),
        SizedBox(
          height: 130.h,
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) => const CustomListTile(
                    color: Colors.green,
                    title: 'Mohamed',
                    subtitle: 'Today, 12:00 PM',
                  )),
        ),
        const StatusText(text: 'Viewed updates'),
        Expanded(
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) => const CustomListTile(
                    color: Color.fromARGB(255, 128, 126, 126),
                    title: 'Ahmed',
                    subtitle: 'Today, 1:29 PMs',
                  )),
        ),
      ],
    );
  }
}
