// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sajesh_app/screens/widgets/myColors.dart';

class SelfCourseEnroll extends StatefulWidget {
  const SelfCourseEnroll({super.key, required String title});

  @override
  State<SelfCourseEnroll> createState() => _SelfCourseEnrollState();
}

class _SelfCourseEnrollState extends State<SelfCourseEnroll> {
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
                  const Text('Self Course Enroll'),
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
                  padding: const EdgeInsets.fromLTRB(8, 15, 0, 0),
                  child: Row(
                    children: const [
                      Text(
                        "Organizers",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: MyColors.textColor_Blue),
                      )
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 240,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                                  child: Text(
                                    "Enrolment Options",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                        color: MyColors.textColor_Blue),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 5, // 50%
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 155,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Image.asset(
                                            'assets/images/pic.jpg',
                                            // width: double.infinity,
                                            height: 200,
                                            // fit:  BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                    flex: 5, // 50%
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: const [
                                              Text(
                                                "Organizers",
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w500,
                                                  color:
                                                      MyColors.textColor_Blue,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const Text(
                                            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes dfg.",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 240,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                                  child: Text(
                                    "Self enrolment (Student)",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                        color: MyColors.textColor_Blue),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Flexible(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(),
                                      hintText: 'No enrolment key required',
                                    ),
                                    // style: ,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ))));
  }
}
