import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/constants/assets.gen.dart';
import 'package:petadpotion_app/ui/screens/login/login_viewmodel.dart';
// import 'package:petadpotion_app/ui/screens/signup/signup_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key, required this.viewmodel});
  final LoginViewmodel viewmodel;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewmodel>.reactive(
      viewModelBuilder: () {
        return LoginViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            // backgroundColor: Palette.blue5,
            // appBar: AppBar(
            //   centerTitle: true,
            //   leading: Icon(null),
            //   backgroundColor: Colors.transparent,
            //   title: Text(
            //     "Welcome to Pet Haus",
            //     style: TextStyle(
            //         color: Palette.mainblack,
            //         fontWeight: FontWeight.w700,
            //         fontSize: 20),
            //   ),
            // ),
            body: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Assets.images.bg.image(fit: BoxFit.cover).image)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                child: Form(
                  key: viewModel.formkey,
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height,
                    child: Column(
                      children: [
                        Text(
                          "Create an account",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 28),
                        ),
                        Stack(
                          children: [
                            SizedBox(
                              height: 520,
                              width: 800,
                            ),
                            Positioned(
                              bottom: 32,
                              left: 0,
                              right: 0,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 15),
                                height: 300,
                                // width: 400,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      colors: [
                                        Palette.blueGrey,
                                        Palette.mainWhite,
                                        Palette.blueGrey
                                      ]),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextFormField(
                                      controller: viewModel.email,
                                      validator: (value) {
                                        if (value != null &&
                                            value.isNotEmpty &&
                                            value.contains("@")) {
                                          return null;
                                        } else {
                                          return "invalid email";
                                        }
                                      },
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 10),
                                        hintText: "Your Eamil Address",
                                        hintStyle: TextStyle(
                                            color: Palette.mainblack,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        // enabledBorder: OutlineInputBorder(
                                        //     borderRadius: BorderRadius.circular(10),
                                        //     borderSide: BorderSide(
                                        //       color: Palette.mainblack,
                                        //     )),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Color(0xff1a75d2),
                                            )),
                                        // errorBorder: OutlineInputBorder(
                                        //     borderRadius: BorderRadius.circular(10),
                                        //     borderSide: BorderSide(
                                        //       color: Colors.red.shade400,
                                        //     )),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    TextFormField(
                                      controller: viewModel.password,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                      validator: (value) {
                                        if (value != null &&
                                            value.length >= 6) {
                                          return null;
                                        } else {
                                          return "enter password with atleast 6 charaters";
                                        }
                                      },
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 10),
                                          hintText: "Your Password",
                                          hintStyle: TextStyle(
                                              color: Palette.mainblack,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                          // enabledBorder: OutlineInputBorder(
                                          //     borderRadius: BorderRadius.circular(10),
                                          //     borderSide: BorderSide(
                                          //       color: Colors.grey.shade400,
                                          //     )),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Color(0xff1a75d2),
                                              )),
                                          // errorBorder: OutlineInputBorder(
                                          //     borderRadius: BorderRadius.circular(10),
                                          //     borderSide: BorderSide(
                                          //       color: Colors.red.shade400,
                                          //     )),
                                          suffixIcon: Icon(
                                            Icons.visibility_off_rounded,
                                            color: Colors.grey,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    TextFormField(
                                      controller: viewModel.confirmPassword,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                      validator: (value) {
                                        if (viewModel.password.text ==
                                            viewModel.confirmPassword.text) {
                                          return null;
                                        } else {
                                          return "password doesnot match";
                                        }
                                      },
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 10),
                                          hintText: "Confirm Your Password",
                                          hintStyle: TextStyle(
                                              color: Palette.mainblack,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                          // enabledBorder: OutlineInputBorder(
                                          //     borderRadius: BorderRadius.circular(10),
                                          //     borderSide: BorderSide(
                                          //       color: Colors.grey.shade400,
                                          //     )),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Color(0xff1a75d2),
                                              )),
                                          // errorBorder: OutlineInputBorder(
                                          //     borderRadius: BorderRadius.circular(10),
                                          //     borderSide: BorderSide(
                                          //       color: Colors.red.shade400,
                                          //     )),
                                          suffixIcon: Icon(
                                            Icons.visibility_off_rounded,
                                            color: Colors.grey,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Already have an account?",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                              color: Palette.mainblack),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            viewModel.SignIn();
                                          },
                                          child: Text(
                                            " SignIn",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                                color: Palette.green),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: 100,
                              top: 0,
                              child: Assets.images.logindog.image(height: 300),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        viewModel.isLoading
                            ? CircularProgressIndicator()
                            : InkWell(
                                onTap: () {
                                  viewModel.toSignUp(
                                      email: viewModel.email.text,
                                      password: viewModel.password.text,
                                      context: context);
                                },
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 110),
                                  height: 60,
                                  width: 350,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Assets.images.paws.image(height: 20),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Sign Up",
                                        style: TextStyle(
                                            // fontFamily: FontFamily.barlow,
                                            color: Palette.mainblack,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Assets.images.paws.image(height: 20),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          colors: [
                                            Palette.blueGrey,
                                            Palette.mainWhite,
                                            Palette.blueGrey
                                          ]),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
      },
    );
  }
}
