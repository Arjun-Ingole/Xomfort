import 'package:xomfort/core/app_export.dart';import 'package:xomfort/presentation/booking_name_screen/models/booking_name_model.dart';import 'package:flutter/material.dart';class BookingNameController extends GetxController {TextEditingController statusFillTyController = TextEditingController();

TextEditingController statusFillTyOneController = TextEditingController();

TextEditingController frameTenController = TextEditingController();

Rx<BookingNameModel> bookingNameModelObj = BookingNameModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); statusFillTyController.dispose(); statusFillTyOneController.dispose(); frameTenController.dispose(); } 
 }
