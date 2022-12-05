import 'dart:convert';
import 'dart:developer';
import 'package:amazon_clone/core/constants/app/error_handling.dart';
import 'package:amazon_clone/core/constants/app/global_variables.dart';
import 'package:amazon_clone/core/providers/user_provider.dart';
import 'package:amazon_clone/core/utils/custom_snackbar.dart';
import 'package:amazon_clone/core/utils/shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/models/user.dart';
import 'package:http/http.dart' as http;

class AuthService {
  void signUpUser(
      {required BuildContext context, required String email, required String password, required String name}) async {
    try {
      User user = User(id: "id ", name: name, email: email, password: password, type: "type", token: "token");

      http.Response res =
          await http.post(Uri.parse('http://localhost:3000/api/signup'), body: user.toJson(), headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      });

      httpHandle(
          response: res,
          context: context,
          onSuccess: () {
            showSnackBar(context, "Account has been created, sign in with same credential");
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  void signInUser({required BuildContext context, required String email, required String password}) async {
    try {
      http.Response res = await http.post(Uri.parse('http://localhost:3000/api/signin'),
          body: jsonEncode({'email': email, 'password': password}),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          });

      httpHandle(
          response: res,
          context: context,
          onSuccess: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            Provider.of<UserProvider>(context, listen: false).setUser(res.body);
            await prefs.setString('x-auth-token', jsonDecode(res.body)['token']);
            Navigator.pushNamedAndRemoveUntil(context, "/bottomBar", ((route) => false));
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  void getUserData(
    BuildContext context,
  ) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('x-auth-token');

      if (token == null) {
        prefs.setString('x-auth-token', '');
      }

      var tokenRes = await http.post(
        Uri.parse('$uri/tokenIsValid'),
        headers: <String, String>{'Content-Type': 'application/json; charset=UTF-8', 'x-auth-token': token!},
      );

      var response = jsonDecode(tokenRes.body);

      if (response == true) {
        http.Response userRes = await http.get(
          Uri.parse('$uri/'),
          headers: <String, String>{'Content-Type': 'application/json; charset=UTF-8', 'x-auth-token': token},
        );

        var userProvider = Provider.of<UserProvider>(context, listen: false);
        userProvider.setUser(userRes.body);
      }
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
