import 'package:xomfort/core/app_export.dart';import 'package:xomfort/presentation/forgot_password_type_otp_screen/models/forgot_password_type_otp_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';class ForgotPasswordTypeOtpController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<ForgotPasswordTypeOtpModel> forgotPasswordTypeOtpModelObj = ForgotPasswordTypeOtpModel().obs;

@override void codeUpdated() { otpController.value.text = code!; } 
@override void onInit() { super.onInit(); listenForCode(); } 
@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
