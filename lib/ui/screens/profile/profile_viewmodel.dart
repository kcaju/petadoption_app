import 'package:firebase_auth/firebase_auth.dart';
import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class ProfileViewmodel extends BaseViewModel {
  toSignOut() async {
    await FirebaseAuth.instance.signOut();
    navigationService.pushNamedAndRemoveUntil(Routes.loginView);
  }
}
