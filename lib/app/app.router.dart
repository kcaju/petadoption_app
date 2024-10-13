// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i14;
import 'package:flutter/material.dart';
import 'package:petadpotion_app/ui/screens/birds_list/birdlist_view.dart'
    as _i10;
import 'package:petadpotion_app/ui/screens/bottomnav/bottomnav_view.dart'
    as _i7;
import 'package:petadpotion_app/ui/screens/cats_list/catlist_view.dart' as _i9;
import 'package:petadpotion_app/ui/screens/dogs_list/doglist_view.dart' as _i8;
import 'package:petadpotion_app/ui/screens/get_start/getstart_view.dart' as _i3;
import 'package:petadpotion_app/ui/screens/intermediate_screen/intermediate_view.dart'
    as _i4;
import 'package:petadpotion_app/ui/screens/login/login_view.dart' as _i5;
import 'package:petadpotion_app/ui/screens/pet_details/petdetails_view.dart'
    as _i12;
import 'package:petadpotion_app/ui/screens/petsupplies_details/petsupplies_details_view.dart'
    as _i13;
import 'package:petadpotion_app/ui/screens/rabbit_list/rabbitlist_view.dart'
    as _i11;
import 'package:petadpotion_app/ui/screens/registration/registration_view.dart'
    as _i6;
import 'package:petadpotion_app/ui/screens/splash/splash_view.dart' as _i2;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i15;

class Routes {
  static const splashView = '/';

  static const getstartView = '/getstart-view';

  static const intermediateView = '/intermediate-view';

  static const loginView = '/login-view';

  static const registrationView = '/registration-view';

  static const bottomnavView = '/bottomnav-view';

  static const doglistView = '/doglist-view';

  static const catlistView = '/catlist-view';

  static const birdlistView = '/birdlist-view';

  static const rabbitlistView = '/rabbitlist-view';

  static const petdetailsView = '/petdetails-view';

  static const petsuppliesDetailsView = '/petsupplies-details-view';

  static const all = <String>{
    splashView,
    getstartView,
    intermediateView,
    loginView,
    registrationView,
    bottomnavView,
    doglistView,
    catlistView,
    birdlistView,
    rabbitlistView,
    petdetailsView,
    petsuppliesDetailsView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.splashView,
      page: _i2.SplashView,
    ),
    _i1.RouteDef(
      Routes.getstartView,
      page: _i3.GetstartView,
    ),
    _i1.RouteDef(
      Routes.intermediateView,
      page: _i4.IntermediateView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i5.LoginView,
    ),
    _i1.RouteDef(
      Routes.registrationView,
      page: _i6.RegistrationView,
    ),
    _i1.RouteDef(
      Routes.bottomnavView,
      page: _i7.BottomnavView,
    ),
    _i1.RouteDef(
      Routes.doglistView,
      page: _i8.DoglistView,
    ),
    _i1.RouteDef(
      Routes.catlistView,
      page: _i9.CatlistView,
    ),
    _i1.RouteDef(
      Routes.birdlistView,
      page: _i10.BirdlistView,
    ),
    _i1.RouteDef(
      Routes.rabbitlistView,
      page: _i11.RabbitlistView,
    ),
    _i1.RouteDef(
      Routes.petdetailsView,
      page: _i12.PetdetailsView,
    ),
    _i1.RouteDef(
      Routes.petsuppliesDetailsView,
      page: _i13.PetsuppliesDetailsView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.SplashView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.SplashView(),
        settings: data,
      );
    },
    _i3.GetstartView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.GetstartView(),
        settings: data,
      );
    },
    _i4.IntermediateView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.IntermediateView(),
        settings: data,
      );
    },
    _i5.LoginView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.LoginView(),
        settings: data,
      );
    },
    _i6.RegistrationView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.RegistrationView(),
        settings: data,
      );
    },
    _i7.BottomnavView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.BottomnavView(),
        settings: data,
      );
    },
    _i8.DoglistView: (data) {
      final args = data.getArgs<DoglistViewArguments>(nullOk: false);
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => _i8.DoglistView(
            key: args.key,
            dogData: args.dogData,
            id: args.id,
            breed: args.breed,
            url: args.url),
        settings: data,
      );
    },
    _i9.CatlistView: (data) {
      final args = data.getArgs<CatlistViewArguments>(nullOk: false);
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => _i9.CatlistView(
            key: args.key,
            dogData: args.dogData,
            id: args.id,
            url: args.url,
            breed: args.breed),
        settings: data,
      );
    },
    _i10.BirdlistView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.BirdlistView(),
        settings: data,
      );
    },
    _i11.RabbitlistView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.RabbitlistView(),
        settings: data,
      );
    },
    _i12.PetdetailsView: (data) {
      final args = data.getArgs<PetdetailsViewArguments>(nullOk: false);
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => _i12.PetdetailsView(
            key: args.key,
            name: args.name,
            color: args.color,
            owner: args.owner,
            desc: args.desc,
            sex: args.sex,
            location: args.location,
            url: args.url,
            price: args.price,
            age: args.age),
        settings: data,
      );
    },
    _i13.PetsuppliesDetailsView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.PetsuppliesDetailsView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class DoglistViewArguments {
  const DoglistViewArguments({
    this.key,
    required this.dogData,
    required this.id,
    required this.breed,
    required this.url,
  });

  final _i14.Key? key;

  final Map<String, dynamic> dogData;

  final String id;

  final String breed;

  final String url;

  @override
  String toString() {
    return '{"key": "$key", "dogData": "$dogData", "id": "$id", "breed": "$breed", "url": "$url"}';
  }

  @override
  bool operator ==(covariant DoglistViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.dogData == dogData &&
        other.id == id &&
        other.breed == breed &&
        other.url == url;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        dogData.hashCode ^
        id.hashCode ^
        breed.hashCode ^
        url.hashCode;
  }
}

class CatlistViewArguments {
  const CatlistViewArguments({
    this.key,
    required this.dogData,
    required this.id,
    required this.url,
    required this.breed,
  });

  final _i14.Key? key;

  final Map<String, dynamic> dogData;

  final String id;

  final String url;

  final String breed;

  @override
  String toString() {
    return '{"key": "$key", "dogData": "$dogData", "id": "$id", "url": "$url", "breed": "$breed"}';
  }

  @override
  bool operator ==(covariant CatlistViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.dogData == dogData &&
        other.id == id &&
        other.url == url &&
        other.breed == breed;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        dogData.hashCode ^
        id.hashCode ^
        url.hashCode ^
        breed.hashCode;
  }
}

class PetdetailsViewArguments {
  const PetdetailsViewArguments({
    this.key,
    required this.name,
    required this.color,
    required this.owner,
    required this.desc,
    required this.sex,
    required this.location,
    required this.url,
    required this.price,
    required this.age,
  });

  final _i14.Key? key;

  final String name;

  final String color;

  final String owner;

  final String desc;

  final String sex;

  final String location;

  final String url;

  final num price;

  final num age;

  @override
  String toString() {
    return '{"key": "$key", "name": "$name", "color": "$color", "owner": "$owner", "desc": "$desc", "sex": "$sex", "location": "$location", "url": "$url", "price": "$price", "age": "$age"}';
  }

  @override
  bool operator ==(covariant PetdetailsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.name == name &&
        other.color == color &&
        other.owner == owner &&
        other.desc == desc &&
        other.sex == sex &&
        other.location == location &&
        other.url == url &&
        other.price == price &&
        other.age == age;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        name.hashCode ^
        color.hashCode ^
        owner.hashCode ^
        desc.hashCode ^
        sex.hashCode ^
        location.hashCode ^
        url.hashCode ^
        price.hashCode ^
        age.hashCode;
  }
}

extension NavigatorStateExtension on _i15.NavigationService {
  Future<dynamic> navigateToSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.splashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToGetstartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.getstartView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToIntermediateView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.intermediateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRegistrationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.registrationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBottomnavView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.bottomnavView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDoglistView({
    _i14.Key? key,
    required Map<String, dynamic> dogData,
    required String id,
    required String breed,
    required String url,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.doglistView,
        arguments: DoglistViewArguments(
            key: key, dogData: dogData, id: id, breed: breed, url: url),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCatlistView({
    _i14.Key? key,
    required Map<String, dynamic> dogData,
    required String id,
    required String url,
    required String breed,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.catlistView,
        arguments: CatlistViewArguments(
            key: key, dogData: dogData, id: id, url: url, breed: breed),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBirdlistView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.birdlistView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRabbitlistView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.rabbitlistView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPetdetailsView({
    _i14.Key? key,
    required String name,
    required String color,
    required String owner,
    required String desc,
    required String sex,
    required String location,
    required String url,
    required num price,
    required num age,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.petdetailsView,
        arguments: PetdetailsViewArguments(
            key: key,
            name: name,
            color: color,
            owner: owner,
            desc: desc,
            sex: sex,
            location: location,
            url: url,
            price: price,
            age: age),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPetsuppliesDetailsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.petsuppliesDetailsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.splashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithGetstartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.getstartView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithIntermediateView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.intermediateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRegistrationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.registrationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBottomnavView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.bottomnavView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDoglistView({
    _i14.Key? key,
    required Map<String, dynamic> dogData,
    required String id,
    required String breed,
    required String url,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.doglistView,
        arguments: DoglistViewArguments(
            key: key, dogData: dogData, id: id, breed: breed, url: url),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCatlistView({
    _i14.Key? key,
    required Map<String, dynamic> dogData,
    required String id,
    required String url,
    required String breed,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.catlistView,
        arguments: CatlistViewArguments(
            key: key, dogData: dogData, id: id, url: url, breed: breed),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBirdlistView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.birdlistView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRabbitlistView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.rabbitlistView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPetdetailsView({
    _i14.Key? key,
    required String name,
    required String color,
    required String owner,
    required String desc,
    required String sex,
    required String location,
    required String url,
    required num price,
    required num age,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.petdetailsView,
        arguments: PetdetailsViewArguments(
            key: key,
            name: name,
            color: color,
            owner: owner,
            desc: desc,
            sex: sex,
            location: location,
            url: url,
            price: price,
            age: age),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPetsuppliesDetailsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.petsuppliesDetailsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
