import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

class ProfileViewmodel extends BaseViewModel {
  Future<void> navigate() async {
    final SharedPreferences loginPrefs = await SharedPreferences.getInstance();
    await loginPrefs.clear();
    navigationService.navigateTo(Routes.loginView);
  }
}
