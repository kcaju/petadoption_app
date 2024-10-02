import 'package:flutter/material.dart';
import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

class LoginViewmodel extends BaseViewModel {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  late final SharedPreferences loginPrefs;
  login() async {
    loginPrefs = await SharedPreferences.getInstance();
    bool isLoggedIn = await loginPrefs.getBool('isLoggedIn') ?? false;
    if (isLoggedIn) {
      // Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => BottomNavScreen(),
      //     ));
      navigationService.pushNamedAndRemoveUntil(Routes.bottomnavView);
    }
  }

  Future<void> loginValidation() async {
    if (formkey.currentState!.validate()) {
      await loginPrefs.setString('name', name.text);
      await loginPrefs.setString('password', password.text);
      await loginPrefs.setBool('isLoggedIn', true);
      navigationService.pushNamedAndRemoveUntil(Routes.bottomnavView);

      // Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => BottomNavScreen(),
      //     ));
    } else {
      print("Not Validated");
    }
  }
}
