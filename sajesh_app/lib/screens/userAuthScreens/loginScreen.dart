import 'package:flutter/material.dart';
import 'package:sajesh_app/apiResponce/api_response.dart';
import 'package:sajesh_app/screens/constantVariable/constantVariable.dart';
import 'package:sajesh_app/screens/widgets/customWidgets.dart';
import 'package:sajesh_app/screens/widgets/myColors.dart';
import 'package:sajesh_app/screens/userAuthScreens/singUpScreen.dart';
import 'dart:developer' as devtools show log;
import 'forgetPasswordScreen.dart';

class LoginScreen extends StatefulWidget {
  final String languageCode;

  const LoginScreen({
    super.key,
    required this.languageCode,
    required String title,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isEmailValid = false;
  bool isPasswordValid = false;

  late Future<dynamic> futureAlbum;
  // late UserLoginResponse loginResponse;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
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

  void _submit(BuildContext context) {
    // print('login_A:' + " =_submit_run =  ");
    FocusScope.of(context).requestFocus(new FocusNode());
    final _accountUsername = emailController.value.text;
    final _accountPassword = passwordController.value.text;

    if (_accountUsername.isEmpty || _accountPassword.isEmpty) {
      if (_accountUsername.isEmpty) {
        ConstantMethods.showSnackBar(context, "User name cannot be empty");
      } else {
        ConstantMethods.showSnackBar(context, "Password cannot be empty");
      }
    } else {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
      }

      setState(() {
        _isInAsyncCall = true;
      });
      // Simulate a service call
      Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          // stop the modal progress HUD
          _isInAsyncCall = false;
        });
        Map toMap() {
          var map = {};
          map["username"] = _accountUsername;
          map["password"] = _accountPassword;
          return map;
        }

        futureAlbum = ReturnApisResponse().login(context, toMap());
        // print('login_B: ${futureAlbum}');
        // devtools.log('login_B: ${futureAlbum}');
        // futureAlbum.catchError(
        //   (onError) {
        //     ConstantMethods.showSnackBar(context, "Please try again");
        //   },
        // ).then((value) {
        //   loginResponse = value;
        //   if (loginResponse == null && (loginResponse.success == true)) {
        //     ConstantMethods.showSnackBar(context, "No data found");
        //   }
        // }).whenComplete(() {
        //   //ConstantMethods.showSnackBar(context, loginResponse.msg);
        //   devtools.log("function called $loginResponse");
        //   if ((loginResponse != null) && (loginResponse.success == true)) {
        //     print('login_A:' +
        //         " =loginResponse_is =  " +
        //         loginResponse.success.toString());
        //     _setLoggedIn(loginResponse);
        //   } else {
        //     ConstantMethods.showSnackBar(context, loginResponse.msg);
        //   }
        // });
      });
    }
  }

  // _setLoggedIn(UserLoginResponse detail) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setBool(ConstantVariable.isUserLoggedIn, true);

  //   prefs.setString(ConstantVariable.userData, json.encode(detail.data));
  //   //  print("initStateParam" +" encodedMap = "+detail.data.email + " staff = "+detail.data.isStaff.toString());

  //   Navigator.pushAndRemoveUntil(
  //     context,
  //     MaterialPageRoute(builder: (context) => HomeScreen("NA")),
  //     (Route<dynamic> route) => false,
  //   );
  // }

  String? get _emailErrorText {
    final text = emailController.value.text;
    if (text.isNotEmpty) {
      if (text.isEmpty) {
        return 'Too short';
      } else if (!text.contains("@")) {
        return 'Invalid Email';
      }
    }
    return null;
  }

  String? get _passwordErrorText {
    final text = passwordController.value.text;

    if (text.isNotEmpty) {
      if (text.length < 4) {
        return 'Too short password';
      } else if (text.length > 16) {
        return 'Too large password';
      }
    }

    return null;
  }

  Widget buildLoginForm(BuildContext context) {
    var _text = '';
    var _text2 = '';
    _formKey.currentState?.validate();
    return Form(
        key: this._formKey,
        child: Column(
          children: [
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
                    labelText: ' Email Id',
                    hintText: 'Enter your Email Id',
                    errorText: _emailErrorText,
                    errorStyle: const TextStyle(color: MyColors.red)),
                onChanged: (text) => setState(() => _text),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  ConstantVariable.homeItemsLeftRightMargin, 10, 20, 10),
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                textCapitalization: TextCapitalization.none,
                controller: passwordController,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    labelText: 'Password',
                    hintText: 'Enter secure password',
                    errorText: _passwordErrorText,
                    errorStyle: const TextStyle(color: MyColors.red)),
                onChanged: (text) => setState(() => _text2),
              ),
            ),
          ],
        ));
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
              height: 160,
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, //Center Row contents horizontally,
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
                  ConstantVariable.loginTextCaps,
                  style: TextStyle(
                      color: Color.fromARGB(235, 29, 29, 29),
                      fontSize: 35,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            buildLoginForm(context),
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
                  onPressed: () {
                    if (_emailErrorText != null) {
                      ConstantMethods.showSnackBar(
                          context, "Please Enter Valid Email Id");
                    } else if (_passwordErrorText != null) {
                      ConstantMethods.showSnackBar(context,
                          "Password must be greater than 4 and less than 12 digits");
                    } else if (_emailErrorText == null &&
                        _passwordErrorText == null) {
                      _submit(context);
                    }
                  },
                  // onPressed: (_emailErrorText==null && _passwordErrorText==null) ?  _setLoggedIn
                  // onPressed:
                  //     (_emailErrorText == null && _passwordErrorText == null)
                  //         ? _submit(context)
                  //         : null,
                  child: Ink(
                    decoration: BoxDecoration(
                        // gradient: const LinearGradient(colors: [
                        //   MyColors.loginButtonColor_a,
                        //   MyColors.loginButtonColor_b,
                        //   MyColors.loginButtonColor_c,
                        //   MyColors.loginButtonColor_d
                        // ]),
                        borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      child: _isInAsyncCall
                          ? const SizedBox(
                              height: 25,
                              width: 25,
                              child: CircularProgressIndicator(),
                            )
                          : const Text(
                              ConstantVariable.loginTextCaps,
                              style: TextStyle(
                                  color: MyColors.white, fontSize: 20),
                            ),
                    ),
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                      ConstantVariable.homeItemsLeftRightMargin_2,
                      0,
                      ConstantVariable.homeItemsLeftRightMargin_2,
                      ConstantVariable.homeBottomMargin),
                  child: RawMaterialButton(
                    child: const Text(
                      ConstantVariable.createNewAccount,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: MyColors.black),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CreateNewAccountScreen(
                                languageCode: '',
                                title: ConstantVariable.createNewAccount,
                              )));
                      // signup screen
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                      ConstantVariable.homeItemsLeftRightMargin_2,
                      0,
                      ConstantVariable.homeItemsLeftRightMargin_2,
                      ConstantVariable.homeBottomMargin),
                  child: TextButton(
                    child: const Text(
                      ConstantVariable.forgetPassword,
                      style: TextStyle(fontSize: 16, color: MyColors.black),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ForgetPasswordScreen(
                                languageCode: '',
                                title: '',
                              )));
                      //signup screen
                    },
                  ),
                )
              ],
            ),
            // Container(
            //     padding: const EdgeInsets.fromLTRB(
            //         ConstantVariable.homeItemsLeftRightMargin,
            //         ConstantVariable.homeTopMargin,
            //         ConstantVariable.homeItemsLeftRightMargin,
            //         ConstantVariable.homeBottomMargin),
            //     child: ElevatedButton(
            //       style: ElevatedButton.styleFrom(
            //         primary: MyColors.googleButtonColor,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(5),
            //         ),
            //         elevation: 5,
            //         minimumSize: const Size.fromHeight(50), // NEW
            //       ),
            //       onPressed: () {},
            //       child: const Text(
            //         ConstantVariable.google,
            //         style: TextStyle(color: MyColors.white, fontSize: 20),
            //       ),
            //     )),
            // Container(
            //     padding: const EdgeInsets.fromLTRB(
            //         ConstantVariable.homeItemsLeftRightMargin,
            //         ConstantVariable.homeTopMargin,
            //         ConstantVariable.homeItemsLeftRightMargin,
            //         ConstantVariable.homeBottomMargin),
            //     child: ElevatedButton(
            //       style: ElevatedButton.styleFrom(
            //         primary: MyColors.facebookButtonColor,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(5),
            //         ),
            //         elevation: 5,
            //         minimumSize: const Size.fromHeight(50), // NEW
            //       ),
            //       onPressed: () {},
            //       child: const Text(
            //         ConstantVariable.facebook,
            //         style: TextStyle(color: MyColors.white, fontSize: 20),
            //       ),
            //     )),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
