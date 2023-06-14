// ignore: file_names
import 'package:flutter/material.dart';
import 'package:sajesh_app/screens/constantVariable/constantVariable.dart';
import 'package:sajesh_app/screens/widgets/myColors.dart';
import 'package:sajesh_app/screens/userAuthScreens/loginScreen.dart';

class CreateNewAccountScreen extends StatefulWidget {
  final String languageCode;

  const CreateNewAccountScreen({
    super.key,
    required this.languageCode,
    required String title,
  });

  @override
  State<CreateNewAccountScreen> createState() => _CreateNewAccountScreen();
}

class _CreateNewAccountScreen extends State<CreateNewAccountScreen> {
  bool isEmailValid = false;
  bool isPasswordValid = false;
  bool value = false;
  // bool valuesecond = false;

  late Future<dynamic> futureAlbum;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isInAsyncCall = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  // @override
  // void initState() {
  //   // _videoMetaData = const YoutubeMetaData();
  //   // _playerState = PlayerState.unknown;
  //   setState(() {
  //     try {
  //       print('login_A:' + " =initState =  ");
  //     } catch (e) {}
  //   });
  //   super.initState();
  // }

  Widget buildLoginForm(BuildContext context) {
    var valueFirstName = '';
    var valueLastName = '';
    var valueemailId = '';
    var valuePassword = '';
    var valueConfirmPassword = '';

    // var _text2 = '';
    // _formKey.currentState?.validate();
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                      ConstantVariable.homeItemsLeftRightMargin, 10, 20, 10),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textCapitalization: TextCapitalization.none,
                    controller: firstNameController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      labelText: 'First Name',
                      hintText: 'Enter your first name',
                      // errorText: _emailErrorText
                    ),
                    onChanged: (text) => setState(() => valueFirstName),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                      ConstantVariable.homeItemsLeftRightMargin, 10, 20, 10),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textCapitalization: TextCapitalization.none,
                    controller: lastNameController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
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
          Padding(
            padding: const EdgeInsets.fromLTRB(
                ConstantVariable.homeItemsLeftRightMargin, 10, 20, 10),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              textCapitalization: TextCapitalization.none,
              controller: emailController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                labelText: 'Email',
                hintText: 'Enter your Email Id',
                // errorText: _emailErrorText
              ),
              onChanged: (text) => setState(() => valueemailId),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
                ConstantVariable.homeItemsLeftRightMargin, 10, 20, 10),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              textCapitalization: TextCapitalization.none,
              controller: passwordController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                labelText: 'Password',
                hintText: 'Enter your password',
                // errorText: _emailErrorText
              ),
              onChanged: (text) => setState(() => valuePassword),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
                ConstantVariable.homeItemsLeftRightMargin, 10, 20, 10),
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              textCapitalization: TextCapitalization.none,
              controller: confirmPasswordController,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                labelText: 'Confirm Password',
                hintText: 'Re-enter your password',
                // errorText: _passwordErrorText),
              ),
              onChanged: (text) => setState(() => valueConfirmPassword),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.mainBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  width: double.infinity,
                  height: 95,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .center, //Center Row contents horizontally,
                  children: const [
                    Text(
                      "Pri",
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.red,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(" Mersion",
                        style: TextStyle(
                            fontSize: 32,
                            color: Color.fromARGB(235, 29, 29, 29),
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(
                      ConstantVariable.homeItemsLeftRightMargin, 0, 0, 0),
                  child: Center(
                    child: Text(
                      ConstantVariable.createNewAccountHeading,
                      style: TextStyle(
                          color: Color.fromARGB(235, 29, 29, 29),
                          fontSize: 35,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                buildLoginForm(context),
                Center(
                  child: Column(
                    children: [
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: value,
                            onChanged: (value) {
                              setState(() {
                                this.value = value!;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            ConstantVariable.signUpTeamsConditions,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: MyColors.black),
                          ),
                        ],
                      ),
                      // Register Button Start
                      Container(
                          padding: const EdgeInsets.fromLTRB(
                              ConstantVariable.homeItemsLeftRightMargin,
                              0,
                              ConstantVariable.homeItemsLeftRightMargin,
                              0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              elevation: 5,
                              minimumSize: const Size.fromHeight(50), // NEW
                            ),
                            onPressed: () {
                              // if (_emailErrorText == null && _passwordErrorText == null) {
                              //   _submit(context);
                              // } else {
                              //   ConstantMethods.showSnackBar(
                              //       context, "Please Enter Credentials");
                              // }
                            },
                            // onPressed: (_emailErrorText==null && _passwordErrorText==null) ?  _setLoggedIn
                            // onPressed:
                            //     (_emailErrorText == null && _passwordErrorText == null)
                            //         ? _submit(context)
                            //         : null,
                            child: Ink(
                              child: Container(
                                height: 50,
                                alignment: Alignment.center,
                                child: _isInAsyncCall
                                    ? const SizedBox(
                                        height: 25,
                                        width: 20,
                                        child: CircularProgressIndicator(),
                                      )
                                    : const Text(
                                        ConstantVariable.signUpHeading,
                                        style: TextStyle(
                                            color: MyColors.white,
                                            fontSize: 20),
                                      ),
                              ),
                            ),
                          )),
                      // Register Button end
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                            ConstantVariable.homeItemsLeftRightMargin_2,
                            0,
                            ConstantVariable.homeItemsLeftRightMargin_2,
                            ConstantVariable.homeBottomMargin),
                        child: RawMaterialButton(
                          child: const Text(
                            ConstantVariable.alreadyHaveAccount,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: MyColors.black),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LoginScreen(
                                      languageCode: '',
                                      title: ConstantVariable.loginTextCaps,
                                    )));
                            // signup screen
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ));
  }
}
