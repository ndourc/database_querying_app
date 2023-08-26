import 'package:flutter/material.dart';
import 'app_colours.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColor.appWhiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Welcome to \nbaobab.db',
                style: TextStyle(
                  color: AppColor.sideBarTextColor,
                  fontSize: 31,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bradley Hand ITC',
                ),
              ),
            ),
             InkWell(
              onTap: () {},
               child: ListTile(
                     leading: Icon(
                       Icons.home,
                       color: AppColor.mainAccent,
                     ),
                     title: Text('H O M E'),
                   ),
             ),
          ],
        ),
        // Image.asset('<path>')
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final int color;
  final VoidCallback press;

  const DrawerListTile(
      {Key? key,
      required this.title,
      required this.icon,
      required this.color,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: AppColor.greenAccentColor,
        ),
      ),
      title: Text(title,
          style: TextStyle(
            color: AppColor.sideBarTextColor,
            fontWeight: FontWeight.bold,
            fontFamily: 'Segoe UI Emoji',
          )),
    );
  }
}
