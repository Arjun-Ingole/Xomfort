import 'package:xomfort/core/app_export.dart';import 'package:xomfort/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:flutter/material.dart';class EditProfileController extends GetxController {TextEditingController statusFillTyController = TextEditingController();

TextEditingController statusFillTyOneController = TextEditingController();

TextEditingController statusFillTyTwoController = TextEditingController();

TextEditingController genderController = TextEditingController();

Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); statusFillTyController.dispose(); statusFillTyOneController.dispose(); statusFillTyTwoController.dispose(); genderController.dispose(); } 
 }
