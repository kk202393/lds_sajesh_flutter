// import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sajesh_app/screens/homePage/buttom_bar.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:gap/gap.dart';
// import 'package:sajesh_app/screens/homePage/slider_menu.dart';
import 'package:sajesh_app/screens/notificationScreen/notificationDetails.dart';
import 'package:sajesh_app/screens/userDetailsScreens/userProfileScreen.dart';
import 'package:sajesh_app/screens/widgets/myColors.dart';

class DesboardView extends StatefulWidget {
  const DesboardView(
      {super.key, required String languageCode, required String title});

  @override
  State<DesboardView> createState() => _DesboardViewState();
}

class _DesboardViewState extends State<DesboardView> {
  // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  // bool _isDrawerOpen = false;

  // void _toggleDrawer() {
  //   setState(() {
  //     _isDrawerOpen = !_isDrawerOpen;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: MyColors.red,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 30,
              color: Colors.amberAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Text('Brand Logo')],
              ),
            ),
            // const DrawerHeader(
            //   child: Text('Drawer Header'),
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //   ),
            // ),
            ListTile(
              title: const Text(
                'Profile',
                style: TextStyle(color: MyColors.white, fontSize: 16),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const UserPrifileScreen(
                          languageCode: '',
                          title: '',
                        )));
              },
            ),
            const Divider(
              endIndent: Checkbox.width,
              indent: Checkbox.width,
              color: Colors.grey, // Customize the color of the line
              thickness: 1, // Adjust the thickness of the line
              height: 2, // Set the height of the line
            ),
            ListTile(
              title: const Text('My Cources',
                  style: TextStyle(color: MyColors.white, fontSize: 16)),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            const Divider(
              endIndent: Checkbox.width,
              indent: Checkbox.width,
              color: Colors.grey, // Customize the color of the line
              thickness: 1, // Adjust the thickness of the line
              height: 2, // Set the height of the line
            ),
            ListTile(
              title: const Text('Calender',
                  style: TextStyle(color: MyColors.white, fontSize: 16)),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            const Divider(
              endIndent: Checkbox.width,
              indent: Checkbox.width,
              color: Colors.grey, // Customize the color of the line
              thickness: 1, // Adjust the thickness of the line
              height: 2, // Set the height of the line
            ),
            ListTile(
              title: const Text('Notifications',
                  style: TextStyle(color: MyColors.white, fontSize: 16)),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            const Divider(
              endIndent: Checkbox.width,
              indent: Checkbox.width,
              color: Colors.grey, // Customize the color of the line
              thickness: 1, // Adjust the thickness of the line
              height: 2, // Set the height of the line
            ),
            ListTile(
              title: const Text('Messages',
                  style: TextStyle(color: MyColors.white, fontSize: 16)),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            const Divider(
              endIndent: Checkbox.width,
              indent: Checkbox.width,
              color: Colors.grey, // Customize the color of the line
              thickness: 1, // Adjust the thickness of the line
              height: 2, // Set the height of the line
            ),
            ListTile(
              title: const Text('Teachers',
                  style: TextStyle(color: MyColors.white)),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            const Divider(
              endIndent: Checkbox.width,
              indent: Checkbox.width,
              color: Colors.grey, // Customize the color of the line
              thickness: 1, // Adjust the thickness of the line
              height: 2, // Set the height of the line
            ),
            // Add more list items as needed
          ],
        ),
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Gap(3),
            Text('Dashboard'),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/image.jpeg'),
              maxRadius: 15,
            ),
          ],
        ),
        // automaticallyImplyLeading: false
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Home'),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const NotificationDetail(
                            languageCode: '',
                            title: '',
                          )));
                },
                child: Ink(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        'Notification Details',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
