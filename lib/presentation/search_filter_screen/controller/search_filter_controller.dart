import 'package:xomfort/core/app_export.dart';import 'package:xomfort/presentation/search_filter_screen/models/search_filter_model.dart';import 'package:xomfort/widgets/custom_bottom_bar.dart';class SearchFilterController extends GetxController {Rx<SearchFilterModel> searchFilterModelObj = SearchFilterModel().obs;

RxBool checkbox = false.obs;

RxBool checkbox1 = false.obs;

RxBool checkbox2 = false.obs;

RxBool checkbox3 = false.obs;

RxBool checkbox4 = false.obs;

Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
