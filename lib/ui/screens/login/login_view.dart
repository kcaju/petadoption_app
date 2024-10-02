import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/constants/assets.gen.dart';
import 'package:petadpotion_app/ui/screens/login/login_viewmodel.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewmodel>.reactive(
      onViewModelReady: (viewModel) {
        viewModel.login();
      },
      viewModelBuilder: () {
        return LoginViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: Palette.blue5,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Form(
                key: viewModel.formkey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Welcome to Pet Haus",
                          style: TextStyle(
                              color: Palette.mainblack,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                        // Image.asset(
                        //   "assets/images/bird.gif",
                        //   height: 100,
                        //   width: 100,
                        // )
                      ],
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          height: 450,
                          width: 800,
                        ),
                        Positioned(
                          bottom: 32,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            height: 230,
                            width: 400,
                            decoration: BoxDecoration(
                              color: Palette.mainWhite,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextFormField(
                                  controller: viewModel.name,
                                  validator: (value) {
                                    if (viewModel.name.text.isNotEmpty) {
                                      return null;
                                    } else {
                                      return "Enter your name";
                                    }
                                  },
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      hintText: "Enter your Name",
                                      label: Text(
                                        "Name",
                                        style: TextStyle(
                                            color: Palette.mainblack
                                                .withOpacity(0.5),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      hintStyle: TextStyle(
                                          color:
                                              Palette.grey.withOpacity(0.5))),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  controller: viewModel.password,
                                  validator: (value) {
                                    if (viewModel.password.text.isNotEmpty &&
                                        value!.length == 10) {
                                      return null;
                                    } else {
                                      return "Enter your phone number";
                                    }
                                  },
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      hintText: "Enter your Phone Number",
                                      label: Text(
                                        "Phone Number",
                                        style: TextStyle(
                                            color: Palette.mainblack
                                                .withOpacity(0.5),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      hintStyle: TextStyle(
                                          color:
                                              Palette.grey.withOpacity(0.5))),
                                )
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
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        viewModel.loginValidation();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 110),
                        height: 60,
                        width: 350,
                        child: Row(
                          children: [
                            Assets.images.paws.image(height: 20),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Login",
                              style: TextStyle(
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
                                colors: [Palette.primary, Palette.blueGrey]),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
