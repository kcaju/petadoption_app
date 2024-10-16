import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:stacked/stacked.dart';

class LoginViewmodel extends BaseViewModel {
  final PageController pageController = PageController();
  TextEditingController confirmPassword = TextEditingController();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool isLoading = false;
  toSignIn(
      {required String email,
      required String pass,
      required BuildContext context}) async {
    if (formkey.currentState!.validate()) {
      isLoading = true;
      notifyListeners();
      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: pass);
        if (credential.user?.uid != null) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Palette.green1,
              content: Text(
                "User LoggedIn successfully",
                style: TextStyle(
                    color: Palette.mainblack,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )));
          navigationService.pushNamedAndRemoveUntil(Routes.bottomnavView);
        }
      } on FirebaseAuthException catch (e) {
        // log(e.code.toString());
        if (e.code == 'invalid-credential') {
          print('No user found for that email.');
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Palette.red,
              content: Text(
                "No user found for that email.",
                style: TextStyle(
                    color: Palette.mainWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )));
        }
      }
      isLoading = false;
      notifyListeners();
    }
  }

  toSignUp(
      {required String email,
      required String password,
      required BuildContext context}) async {
    if (formkey.currentState!.validate()) {
      isLoading = true;
      notifyListeners();
      try {
        final credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        //navigate to login pge
        if (credential.user?.uid != null) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Palette.green1,
              content: Text(
                "User Registered successfully",
                style: TextStyle(
                    color: Palette.mainblack,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )));
          navigationService.pushNamedAndRemoveUntil(Routes.loginView);
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Palette.red,
              content: Text(
                "The password provided is too weak.",
                style: TextStyle(
                    color: Palette.mainWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )));
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Palette.red,
              content: Text(
                "The account already exists for that email.",
                style: TextStyle(
                    color: Palette.mainWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )));
        }
      } catch (e) {
        print(e);
      }
      isLoading = false;
      notifyListeners();
    }
  }

  SignUp() {
    // navigationService.navigateTo(Routes.registrationView);
    pageController.jumpToPage(1); // Navigate to the signup page
  }

  SignIn() {
    pageController.jumpToPage(0);
  }
}
