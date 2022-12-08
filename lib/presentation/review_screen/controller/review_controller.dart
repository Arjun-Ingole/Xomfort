import 'package:xomfort/core/app_export.dart';import 'package:xomfort/presentation/review_screen/models/review_model.dart';import 'package:flutter/material.dart';class ReviewController extends GetxController {TextEditingController sizeMediumTyController = TextEditingController();

Rx<ReviewModel> reviewModelObj = ReviewModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); sizeMediumTyController.dispose(); } 
 }
