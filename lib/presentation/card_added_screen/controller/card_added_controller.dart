import 'package:xomfort/core/app_export.dart';import 'package:xomfort/presentation/card_added_screen/models/card_added_model.dart';class CardAddedController extends GetxController {Rx<CardAddedModel> cardAddedModelObj = CardAddedModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
