import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Tab(
        child: Text(
          text,
          style: TextStyle(fontSize: 17.sp),
        ),
      ),
    );
  }
}

var mainColor = Colors.greenAccent.shade400;
var appBarBackgroundColor = const Color(0xff212b33);
var bodyBackgroundColor = const Color(0xff0e1a20);

class ActionsIcon extends StatelessWidget {
  const ActionsIcon({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: Colors.grey,
        ));
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.color,
      required this.title,
      required this.subtitle});
  final Color color;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        radius: 26,
        child: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/status.jpg'),
          radius: 22,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15.sp,
        ),
      ),
      trailing: Icon(
        Icons.more_horiz_rounded,
        color: Colors.grey,
        size: 26.sp,
      ),
    );
  }
}

class StatusText extends StatelessWidget {
  const StatusText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0.h, left: 17.0.w, bottom: 10.h),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.grey, fontSize: 18.sp, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class CallListTile extends StatelessWidget {
  const CallListTile(
      {super.key,
      required this.color,
      required this.title,
      required this.subtitle,
      required this.subtitleIcon});
  final Color color;
  final String title;
  final String subtitle;
  final Icon subtitleIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        radius: 26,
        child: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/status.jpg'),
          radius: 22,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.w700),
      ),
      subtitle: Row(
        children: [
          subtitleIcon,
          SizedBox(
            width: 5.w,
          ),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15.sp,
            ),
          ),
        ],
      ),
      trailing: Icon(
        Icons.call,
        color: Colors.green,
        size: 26.sp,
      ),
    );
  }
}

class WepAppBar extends StatelessWidget {
  const WepAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarBackgroundColor,
      elevation: 0,
      leading: const Padding(
        padding: EdgeInsets.all(4.0),
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/status.jpg'),
        ),
      ),
      actions: [
        IconButton(
            color: Colors.grey[300],
            onPressed: () {},
            icon: const ImageIcon(AssetImage('assets/icons/people.png'))),
        SizedBox(
          width: 5.w,
        ),
        IconButton(
          color: Colors.grey[300],
          onPressed: (() {}),
          icon: Icon(
            Icons.circle_outlined,
            size: 27.sp,
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        IconButton(
          color: Colors.grey[300],
          onPressed: (() {}),
          icon: Icon(
            Icons.message,
            size: 27.sp,
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        IconButton(
          color: Colors.grey[300],
          onPressed: (() {}),
          icon: Icon(
            Icons.more_vert_rounded,
            size: 27.sp,
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
      ],
    );
  }
}

class SearchPart extends StatelessWidget {
  const SearchPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: const Color(0xff202c33),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Icon(
                    Icons.search_rounded,
                    color: Colors.grey[300],
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  const Text(
                    'Search or start a new chat',
                    style: TextStyle(color: Color(0xff7c908a)),
                  ),
                ],
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.filter_list_rounded,
            color: Color(0xff707f88),
          ),
        )
      ],
    );
  }
}
