// ignore: file_names
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sajesh_app/screens/constantVariable/constantVariable.dart';
// import 'package:sajesh_app/screens/widgets/customWidgets.dart';
import 'package:sajesh_app/screens/widgets/myColors.dart';

class ForgetPasswordScreen extends StatefulWidget {
  final String languageCode;

  const ForgetPasswordScreen({
    super.key,
    required this.languageCode,
    required String title,
  });
  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreen();
}

class _ForgetPasswordScreen extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              // IconButton(
              //   // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              //   icon: const FaIcon(FontAwesomeIcons.arrowLeft),
              //   onPressed: () {},
              //   iconSize: 22,
              // ),
              Gap(5),
              Text('Forget Password'),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/image.jpeg'),
                maxRadius: 15,
              ),
            ],
          ),
        ),
        backgroundColor: MyColors.mainBackgroundColor,
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          const SizedBox(
            width: double.infinity,
            height: 160,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(
                ConstantVariable.homeItemsLeftRightMargin, 10, 20, 10),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              textCapitalization: TextCapitalization.none,
              // controller: emailController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                labelText: ConstantVariable.emailIdTextCaps,
                hintText: ConstantVariable.emailIdHintText,
                // errorText: _emailErrorText
              ),
              // onChanged: (text) => setState(() => _text),
            ),
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(
                  ConstantVariable.homeItemsLeftRightMargin,
                  ConstantVariable.homeTopMargin,
                  ConstantVariable.homeItemsLeftRightMargin,
                  ConstantVariable.homeBottomMargin),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  elevation: 5,
                  minimumSize: const Size.fromHeight(50), // NEW
                ),
                onPressed: () {},
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: const Text(
                    ConstantVariable.resetPasswordTextCaps,
                    style: TextStyle(color: MyColors.white, fontSize: 20),
                  ),
                ),
              ))
        ])));
  }
}
