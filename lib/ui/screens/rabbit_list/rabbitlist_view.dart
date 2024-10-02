import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/rabbit_list/rabbitlist_viewmodel.dart';
import 'package:petadpotion_app/ui/screens/rabbit_list/tab/rabbit_tab.dart';
import 'package:stacked/stacked.dart';

class RabbitlistView extends StatelessWidget {
  const RabbitlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RabbitlistViewmodel>.reactive(
      viewModelBuilder: () {
        return RabbitlistViewmodel();
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
                  child: RabbitTab())),
        );
      },
    );
  }
}
