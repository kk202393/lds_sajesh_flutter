// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sajesh_app/screens/widgets/myColors.dart';
import 'package:sajesh_app/screens/constantVariable/constantVariable.dart';
// import 'package:sajesh_app/screens/widgets/customWidgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserPrifileScreen extends StatefulWidget {
  const UserPrifileScreen({
    super.key,
    required String title,
  });
  @override
  State<UserPrifileScreen> createState() => _UserPrifileScreen();
}

class _UserPrifileScreen extends State<UserPrifileScreen> {
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
                  const Text('Profile'),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: <Widget>[
                  //     Padding(
                  //       padding: const EdgeInsets.fromLTRB(
                  //           ConstantVariable.homeItemsLeftRightMargin_2,
                  //           0,
                  //           ConstantVariable.homeItemsLeftRightMargin_2,
                  //           ConstantVariable.homeBottomMargin),
                  //       child: InkWell(
                  //           onTap: () {
                  //             Navigator.of(context).pop();
                  //           },
                  //           child:
                  //               ConstantMethods.imageIcon("assets/images/arrow.png")),
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.fromLTRB(
                  //           0,
                  //           0,
                  //           ConstantVariable.homeItemsLeftRightMargin_2,
                  //           ConstantVariable.homeBottomMargin),
                  //       child: TextButton(
                  //         child: const Text(
                  //           "Account",
                  //           style: TextStyle(
                  //               fontSize: 15, color: MyColors.textColorOnProfile_Black),
                  //         ),
                  //         onPressed: () {
                  //           //signup screen
                  //         },
                  //       ),
                  //     )
                  //   ],
                  // ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/image.jpeg'),
                            maxRadius: 50,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "John Deo",
                          style: TextStyle(
                              color: MyColors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.fromLTRB(
                              ConstantVariable.homeItemsLeftRightMargin,
                              0,
                              ConstantVariable.homeItemsLeftRightMargin,
                              ConstantVariable.homeBottomMargin),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {},
                            child: Container(
                              height: 25,
                              width: 160,
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Edit Profile ",
                                    style: TextStyle(
                                        color: MyColors.white, fontSize: 20),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: IconButton(
                                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                      icon: const FaIcon(
                                          FontAwesomeIcons.penToSquare),
                                      onPressed: () {},
                                      iconSize: 18,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: double.infinity,
                        height: 400,
                        // color: MyColors.black,
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "First Name :",
                                    style: TextStyle(
                                        color: MyColors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "Last Name :",
                                    style: TextStyle(
                                        color: MyColors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "Gender :",
                                    style: TextStyle(
                                        color: MyColors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "Email :",
                                    style: TextStyle(
                                        color: MyColors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "City/Town :",
                                    style: TextStyle(
                                        color: MyColors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "Contry :",
                                    style: TextStyle(
                                        color: MyColors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "Description :",
                                    style: TextStyle(
                                        color: MyColors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      "John",
                                      style: TextStyle(
                                          color: MyColors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      "Deo",
                                      style: TextStyle(
                                          color: MyColors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      "Male",
                                      style: TextStyle(
                                          color: MyColors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      "Johndeo@gmail.com",
                                      style: TextStyle(
                                          color: MyColors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      "Delhi",
                                      style: TextStyle(
                                          color: MyColors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      "India",
                                      style: TextStyle(
                                          color: MyColors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: SingleChildScrollView(
                                      // ignore: sized_box_for_whitespace
                                      child: Container(
                                        width: 250,
                                        height: 100,
                                        child: const Text(
                                          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.",
                                          style: TextStyle(
                                              color: MyColors.black,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
