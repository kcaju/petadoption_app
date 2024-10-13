import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/dogs_list/doglist_viewmodel.dart';
import 'package:petadpotion_app/ui/screens/dogs_list/tab/dog_tab.dart';
import 'package:stacked/stacked.dart';

class DoglistView extends StatelessWidget {
  const DoglistView({
    super.key,
    required this.dogData,
    required this.id,
    required this.breed,
    required this.url,
  });
  final Map<String, dynamic> dogData;
  final String id, url, breed;

  @override
  Widget build(BuildContext context) {
    // final Map<String, dynamic> dogData =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    // final int index = ModalRoute.of(context)!.settings.arguments as int;
    final dogData =
        ModalRoute.of(context)!.settings.arguments as DoglistViewArguments;

    var dogSubCollection = FirebaseFirestore.instance
        .collection("Dogbreeds")
        .doc(dogData.id)
        .collection(dogData.breed.toLowerCase());

    return ViewModelBuilder<DoglistViewmodel>.reactive(
      viewModelBuilder: () {
        return DoglistViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Pick your buddy",
              style: TextStyle(
                  color: Palette.mainblack, fontWeight: FontWeight.bold),
            ),
          ),
          body: StreamBuilder<QuerySnapshot>(
            stream: dogSubCollection.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Text('Something went wrong');
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }

              final subCollectionDocuments = snapshot.data!.docs;
              return Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        3,
                        (index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 100,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                        dogData.url)),
                                color: Palette.blueGrey,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                        itemCount: subCollectionDocuments.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 15,
                            mainAxisExtent: 250),
                        itemBuilder: (context, index) {
                          Map<String, dynamic> subData =
                              subCollectionDocuments[index].data()
                                  as Map<String, dynamic>;
                          return InkWell(
                              onTap: () {
                                viewModel.onTap(subData);
                              },
                              child: DogTab(
                                  name: subData['name'],
                                  location: subData['location'],
                                  url: subData['url']));
                        }),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
