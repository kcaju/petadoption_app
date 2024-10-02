import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/cats_list/catlist_viewmodel.dart';
import 'package:petadpotion_app/ui/screens/cats_list/tab/cat_tab.dart';
import 'package:stacked/stacked.dart';

class CatlistView extends StatelessWidget {
  const CatlistView({super.key});

  @override
  Widget build(BuildContext context) {
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
          body: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 15,
                  mainAxisExtent: 250),
              itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    viewModel.onTap();
                  },
                  child: CatTab())),
        );
      },
    );
  }
}
