import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sajesh_app/screens/widgets/myColors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key, required String title});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
      ),
      backgroundColor: MyColors.mainBackgroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        // scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          // foregroundColor: Colors.amberAccent,
                          backgroundColor: Colors.white,
                          elevation: 25, //<-- SEE HERE
                          shadowColor: const Color.fromARGB(255, 61, 61, 59),
                          fixedSize: const Size(390, 100)),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Expanded(
                              flex: 2, // 20%
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/image.jpeg'),
                                maxRadius: 30,
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 6, // 60%
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 0, 0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: const [
                                        SizedBox(
                                          height: 48,
                                          width: 260,
                                          child: Text(
                                            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit...",
                                            style: TextStyle(
                                                color: MyColors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("8 days 6 hours ago"),
                                        Text("View full notification"),
                                      ],
                                    )
                                  ],
                                ),
                              )),
                        ],
                      )),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
