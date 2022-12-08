import 'package:xomfort/core/app_export.dart';import 'package:xomfort/presentation/carousel_one_screen/models/carousel_one_model.dart';class CarouselOneController extends GetxController {Rx<CarouselOneModel> carouselOneModelObj = CarouselOneModel().obs;

Rx<int> silderIndex = 0.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
