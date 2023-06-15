import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sajesh_app/screens/constantVariable/constantVariable.dart';
import 'package:sajesh_app/screens/homePage/buttom_bar.dart';
// import 'package:sajesh_app/screens/notificationScreen/notificationScreen.dart';
// import 'package:sajesh_app/screens/userAuthScreens/forgetPasswordScreen.dart';
import 'package:sajesh_app/screens/widgets/customWidgets.dart';
import 'package:sajesh_app/urls/api_urls.dart';
// import 'package:salam_flutter/api_dir/ApiUrl.dart';
import 'package:http/http.dart' as http;
// import 'package:salam_flutter/constants/constant_variable/constant_variable.dart';
// import 'dart:developer' as devtools show log;

class ReturnApisResponse {
  Future<dynamic> login(context, Map body) async {
    String jsonString = jsonEncode(body);
    try {
      final response = await http.post(
          Uri.parse(
            ApiUrl.login_api,
          ),
          headers: {
            ConstantVariable.access_token: ConstantVariable.access_token_value,
            ConstantVariable.refresh_token:
                ConstantVariable.refresh_token_value,
            ConstantVariable.jwtToken: ConstantVariable.jwtToken_value
          },
          body: jsonString);
      var data = jsonDecode(response.body.toString());
      ConstantMethods.showSnackBar(context, "${data['msg']}");
      // var data1 = data['data'];
      // devtools.log(data["data"]["userFirstName"]);
      // devtools.log('login_A: ${jsonDecode(response.body.toString())}');

      if (data['status'] == 200) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const ButtomBar(
                  languageCode: '',
                  title: '',
                )));
      }

      // print(data);
      // print('login_B: ${data['msg']}');
      // devtools.log('login_B: ${jsonDecode(response.body)}');
      // return UserLoginResponse.fromJson(jsonDecode(response.body.toString()));
      // return UserLoginResponse(
      //   msg: data["msg"],
      //   status: data["status"],
      //   success: true,
      //   data: Data(
      //       userFirstName: "userFirstName",
      //       userLastName: "userLastName",
      //       userId: data['data'][0]['id'] ? data['data'][0]['id'] : 0,
      //       email: "email",
      //       isStaff: true),
      // );
      return null;
    } catch (err) {
      print("error");
      return 404;
    }
  }
}
