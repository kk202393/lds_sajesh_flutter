import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sajesh_app/screens/widgets/myColors.dart';
// import 'package:sajesh_app/screens/widgets/myColors.dart';
// import 'package:sajesh_app/screens/widgets/myColors.dart';

class NotificationDetail extends StatefulWidget {
  const NotificationDetail({super.key, required String title});

  @override
  State<NotificationDetail> createState() => _NotificationDetailState();
}

class _NotificationDetailState extends State<NotificationDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                  icon: const FaIcon(FontAwesomeIcons.arrowLeft),
                  onPressed: () {},
                  iconSize: 22,
                ),
                const Text('Notifications'),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/image.jpeg'),
                  maxRadius: 15,
                ),
              ],
            ),
            // backgroundColor: MyColors.mainBackgroundColor,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Notifications",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: MyColors.textColor_Blue),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(
                      flex: 2, // 20%
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/pic.jpg'),
                        maxRadius: 30,
                      ),
                    ),
                    Expanded(
                        flex: 6, // 60%
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Kailash Kumar",
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Text(
                                    "8 days 6 hours ago",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 219, 48, 48),
                                    ),
                                  ))
                            ],
                          ),
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 30, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Hi, Kailash kumar ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: double.maxFinite,
                        height: double.maxFinite,
                        child: Text(
                          softWrap: true,
                          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
