import 'package:xomfort/core/app_export.dart';import 'package:xomfort/presentation/search_page_screen/models/search_page_model.dart';import 'package:xomfort/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';class SearchPageController extends GetxController {TextEditingController searchBarController = TextEditingController();

Rx<SearchPageModel> searchPageModelObj = SearchPageModel().obs;

Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchBarController.dispose(); } 
 }
