import 'package:flutter/material.dart';
import 'package:petadpotion_app/ui/screens/petsupplies_details/petsupplies_details_viewmodel.dart';
import 'package:stacked/stacked.dart';

class PetsuppliesDetailsView extends StatelessWidget {
  const PetsuppliesDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PetsuppliesDetailsViewmodel>.reactive(
      viewModelBuilder: () {
        return PetsuppliesDetailsViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(),
        );
      },
    );
  }
}
