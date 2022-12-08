import 'package:xomfort/core/app_export.dart';import 'package:xomfort/presentation/create_new_password_screen/models/create_new_password_model.dart';import 'package:flutter/material.dart';class CreateNewPasswordController extends GetxController {TextEditingController passwordController = TextEditingController();

TextEditingController passwordOneController = TextEditingController();

Rx<CreateNewPasswordModel> createNewPasswordModelObj = CreateNewPasswordModel().obs;

Rx<bool> isShowPassword = false.obs;

Rx<bool> isShowPassword1 = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); passwordController.dispose(); passwordOneController.dispose(); } 
 }
