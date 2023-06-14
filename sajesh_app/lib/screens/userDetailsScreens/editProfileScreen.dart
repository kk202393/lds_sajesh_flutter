// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sajesh_app/screens/widgets/myColors.dart';
// import 'package:sajesh_app/screens/constantVariable/constantVariable.dart';
// import 'package:sajesh_app/screens/widgets/customWidgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditPrifileScreen extends StatefulWidget {
  const EditPrifileScreen({
    super.key,
    required String title,
  });
  @override
  State<EditPrifileScreen> createState() => _EditPrifileScreen();
}

class _EditPrifileScreen extends State<EditPrifileScreen> {
  Widget buildLoginForm(BuildContext context) {
    var valueFirstName = '';
    var valueLastName = '';
    var valueemailId = '';
    var valuePassword = '';
    var valueConfirmPassword = '';

    // var _text2 = '';
    // _formKey.currentState?.validate();
    return Form(
      child: SizedBox(
        width: double.infinity,
        height: 300,
        // color: MyColors.black,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Flexible(
                    child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    "First Name :",
                    style: TextStyle(
                        color: MyColors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                )),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      textCapitalization: TextCapitalization.none,
                      // controller: lastNameController,
                      decoration: InputDecoration(
                        isCollapsed: true,
                        contentPadding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        labelText: 'First Name',
                        hintText: 'Enter your First name',
                        // errorText: _emailErrorText
                      ),
                      onChanged: (text) => setState(() => valueFirstName),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Flexible(
                    child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    "Last Name :",
                    style: TextStyle(
                        color: MyColors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                )),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      textCapitalization: TextCapitalization.none,
                      // controller: lastNameController,
                      decoration: InputDecoration(
                        isCollapsed: true,
                        contentPadding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        labelText: 'Last Name',
                        hintText: 'Enter your Last name',
                        // errorText: _emailErrorText
                      ),
                      onChanged: (text) => setState(() => valueLastName),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Flexible(
                    child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    "Email Add. :",
                    style: TextStyle(
                        color: MyColors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                )),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      textCapitalization: TextCapitalization.none,
                      // controller: lastNameController,
                      decoration: InputDecoration(
                        isCollapsed: true,
                        contentPadding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        labelText: 'Email Address',
                        hintText: 'Enter your Email Address',
                        // errorText: _emailErrorText
                      ),
                      onChanged: (text) => setState(() => valueLastName),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Flexible(
                    child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    "City/Town  :",
                    style: TextStyle(
                        color: MyColors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                )),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      textCapitalization: TextCapitalization.none,
                      // controller: lastNameController,
                      decoration: InputDecoration(
                        isCollapsed: true,
                        contentPadding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        labelText: 'City/Town',
                        hintText: 'Enter your City/Town',
                        // errorText: _emailErrorText
                      ),
                      onChanged: (text) => setState(() => valueLastName),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Flexible(
                    child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                  child: Text(
                    "Country :",
                    style: TextStyle(
                        color: MyColors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                )),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      textCapitalization: TextCapitalization.none,
                      // controller: lastNameController,
                      decoration: InputDecoration(
                        isCollapsed: true,
                        contentPadding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        labelText: 'Country',
                        hintText: 'Enter your Country',
                        // errorText: _emailErrorText
                      ),
                      onChanged: (text) => setState(() => valueLastName),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Flexible(
                    child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    "Description :",
                    style: TextStyle(
                        color: MyColors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                )),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      textCapitalization: TextCapitalization.none,
                      // controller: lastNameController,
                      decoration: InputDecoration(
                        isCollapsed: true,
                        contentPadding: const EdgeInsets.fromLTRB(8, 50, 0, 0),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        labelText: 'Description',
                        hintText: 'Enter your Description',
                        // errorText: _emailErrorText
                      ),
                      onChanged: (text) => setState(() => valueLastName),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

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
                  const Text('Edit Profile'),
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/image.jpeg'),
                            maxRadius: 50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "John Deo",
                          style: TextStyle(
                              color: MyColors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.w500),
                        ),
                      ),

                      // ignore: sized_box_for_whitespace
                    ],
                  ),
                  buildLoginForm(context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          OutlinedButton(
                              style: const ButtonStyle(
                                  fixedSize: MaterialStatePropertyAll(
                                      Size.fromWidth(150))),
                              onPressed: () {},
                              child: const Text(
                                'Back',
                                style: TextStyle(
                                    // color: MyColors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                              style: const ButtonStyle(
                                  fixedSize: MaterialStatePropertyAll(
                                      Size.fromWidth(150))),
                              onPressed: () {},
                              child: const Text(
                                'Update',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ))
                        ],
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
