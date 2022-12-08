import 'package:xomfort/core/app_export.dart';import 'package:xomfort/presentation/home_screen/models/home_model.dart';import 'package:xomfort/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';class HomeController extends GetxController {TextEditingController searchBarController = TextEditingController();

TextEditingController ratingsController = TextEditingController();

TextEditingController ratingsOneController = TextEditingController();

Rx<HomeModel> homeModelObj = HomeModel().obs;

Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchBarController.dispose(); ratingsController.dispose(); ratingsOneController.dispose(); } 
 }
