import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';

class DogTab extends StatelessWidget {
  const DogTab(
      {super.key,
      required this.name,
      required this.location,
      required this.url});
  final String name, location, url;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(url)),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(50)),
                    color: Palette.blueGrey),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                alignment: Alignment.topRight,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.favorite_outline,
                    color: Palette.red,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                name,
                style: TextStyle(
                    color: Palette.mainblack,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(
                Icons.male,
                color: Palette.mainblack,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.pin_drop,
                color: Palette.mainblack,
              ),
              Text(
                location,
                style: TextStyle(
                    color: Palette.mainblack,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
          color: Palette.blue4, borderRadius: BorderRadius.circular(10)),
    );
  }
}
