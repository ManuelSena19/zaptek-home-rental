import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    double heightRatio = height / 812;
    double widthRatio = width / 375;

    double verticalConverter(double value) {
      double newValue = heightRatio * value;
      return newValue;
    }

    double horizontalConverter(double value) {
      double newValue = widthRatio * value;
      return newValue;
    }

    return Scaffold(
      backgroundColor: const Color.fromRGBO(10, 142, 217, 1),
      body: ListView(
        children: [
          SizedBox(height: verticalConverter(130)),
          MenuItem(
            leading: Image.asset('assets/home.png'),
            title: 'Home',
            isActive: true,
          ),
          SizedBox(height: verticalConverter(18)),
          MenuItem(
            leading: Image.asset('assets/profile.png'),
            title: 'Profile',
            isActive: false,
          ),
          SizedBox(height: verticalConverter(18)),
          MenuItem(
            leading: Image.asset('assets/location.png'),
            title: 'Nearby',
            isActive: false,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: horizontalConverter(164),
              child: const Divider(
                thickness: 1,
                color: Color.fromRGBO(255, 255, 255, 0.5),
              ),
            ),
          ),
          MenuItem(
            leading: Image.asset('assets/bookmark.png'),
            title: 'Bookmark',
            isActive: false,
          ),
          SizedBox(height: verticalConverter(18)),
          MenuItem(
            leading: Image.asset('assets/notification_menu.png'),
            title: 'Notification',
            isActive: false,
          ),
          SizedBox(height: verticalConverter(18)),
          MenuItem(
            leading: Image.asset('assets/message_menu.png'),
            title: 'Message',
            isActive: false,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: horizontalConverter(164),
              child: const Divider(
                thickness: 1,
                color: Color.fromRGBO(255, 255, 255, 0.5),
              ),
            ),
          ),
          MenuItem(
            leading: Image.asset('assets/setting.png'),
            title: 'Setting',
            isActive: false,
          ),
          SizedBox(height: verticalConverter(18)),
          MenuItem(
            leading: Image.asset('assets/help.png'),
            title: 'Help',
            isActive: false,
          ),
          SizedBox(height: verticalConverter(18)),
          MenuItem(
            leading: Image.asset('assets/logout.png'),
            title: 'Logout',
            isActive: false,
          ),
        ],
      ),
    );
  }
}

class Drawer extends StatefulWidget {
  const Drawer({super.key});

  @override
  State<Drawer> createState() => _DrawerState();
}

class _DrawerState extends State<Drawer> {
  final ZoomDrawerController _drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(10, 142, 217, 1),
      body: ZoomDrawer(
        controller: _drawerController,
        menuScreen: const MenuPage(),
        mainScreen: const HomePage(),
        borderRadius: 17.14,
        angle: 0,
        showShadow: false,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
        mainScreenScale: 0.2,
        shadowLayer1Color: Colors.transparent,
        shadowLayer2Color: Colors.transparent,
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem(
      {super.key,
      required this.leading,
      required this.title,
      required this.isActive});

  final Widget leading;
  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    double heightRatio = height / 812;
    double widthRatio = width / 375;

    double verticalConverter(double value) {
      double newValue = heightRatio * value;
      return newValue;
    }

    double horizontalConverter(double value) {
      double newValue = widthRatio * value;
      return newValue;
    }

    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: horizontalConverter(165),
        height: verticalConverter(40),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
          color: isActive == true
              ? Colors.white
              : const Color.fromRGBO(10, 142, 217, 1),
        ),
        child: Row(
          children: [
            SizedBox(width: horizontalConverter(24)),
            leading,
            SizedBox(width: horizontalConverter(16)),
            Text(
              title,
              style: GoogleFonts.raleway(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: isActive == true
                    ? const Color.fromRGBO(10, 142, 217, 1)
                    : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
