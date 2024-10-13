import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/constants/assets.gen.dart';
import 'package:petadpotion_app/ui/screens/pet_details/petdetails_viewmodel.dart';
import 'package:stacked/stacked.dart';

class PetdetailsView extends StatelessWidget {
  const PetdetailsView(
      {super.key,
      required this.name,
      required this.color,
      required this.owner,
      required this.desc,
      required this.sex,
      required this.location,
      required this.url,
      required this.price,
      required this.age});
  final String name, color, owner, desc, sex, location, url;
  final num price, age;

  @override
  Widget build(BuildContext context) {
    final details =
        ModalRoute.of(context)!.settings.arguments as PetdetailsViewArguments;

    return ViewModelBuilder<PetdetailsViewmodel>.reactive(
      viewModelBuilder: () {
        return PetdetailsViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                color: Palette.blue2,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(details.url))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 500,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        //details column
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      details.name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                    Text(
                                      details.price.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.pin_drop_sharp,
                                      color: Palette.brown,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      details.location,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Palette.blueGrey,
                                          fontSize: 25),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Sex",
                                            style: TextStyle(
                                                color: Palette.green,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            details.sex,
                                            style: TextStyle(
                                                color: Palette.mainblack,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          border:
                                              Border.all(color: Palette.grey)),
                                    ),
                                    Container(
                                      height: 100,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Age",
                                            style: TextStyle(
                                                color: Palette.green,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            details.age.toString(),
                                            style: TextStyle(
                                                color: Palette.mainblack,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          border:
                                              Border.all(color: Palette.grey)),
                                    ),
                                    Container(
                                      height: 100,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Color",
                                            style: TextStyle(
                                                color: Palette.green,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            details.color,
                                            style: TextStyle(
                                                color: Palette.mainblack,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          border:
                                              Border.all(color: Palette.grey)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          Assets.images.profile1.image().image,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Owned by :",
                                          style: TextStyle(
                                              color: Palette.mainblack,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          details.owner,
                                          style: TextStyle(
                                              color: Palette.mainblack,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    CircleAvatar(
                                      child: Icon(
                                        Icons.call,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                //description
                                Text(details.desc)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Palette.blueGrey)),
                              onPressed: () {},
                              child: Text(
                                "Adopt me",
                                style: TextStyle(
                                    color: Palette.mainblack,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Palette.mainWhite),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
