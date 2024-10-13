import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/cats_list/catlist_viewmodel.dart';
import 'package:petadpotion_app/ui/screens/cats_list/tab/cat_tab.dart';
import 'package:stacked/stacked.dart';

class CatlistView extends StatelessWidget {
  const CatlistView(
      {super.key,
      required this.dogData,
      required this.id,
      required this.url,
      required this.breed});
  final Map<String, dynamic> dogData;
  final String id, url, breed;

  @override
  Widget build(BuildContext context) {
    final catData =
        ModalRoute.of(context)!.settings.arguments as CatlistViewArguments;

    var catSubCollection = FirebaseFirestore.instance
        .collection("Catbreeds")
        .doc(catData.id)
        .collection(catData.breed.toLowerCase());

    return ViewModelBuilder<CatlistViewmodel>.reactive(
      viewModelBuilder: () {
        return CatlistViewmodel();
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
            stream: catSubCollection.snapshots(),
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
                                        catData.url)),
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
                              child: CatTab(
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
