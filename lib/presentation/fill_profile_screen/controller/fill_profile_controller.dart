import 'package:xomfort/core/app_export.dart';import 'package:xomfort/presentation/fill_profile_screen/models/fill_profile_model.dart';import 'package:flutter/material.dart';class FillProfileController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController nicknameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController genderController = TextEditingController();

Rx<FillProfileModel> fillProfileModelObj = FillProfileModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); fullNameController.dispose(); nicknameController.dispose(); emailController.dispose(); genderController.dispose(); } 
 }
