import 'package:xomfort/core/app_export.dart';
import 'package:xomfort/presentation/booking_cancelled_page/models/booking_cancelled_model.dart';
import 'package:flutter/material.dart';

class BookingCancelledController extends GetxController {
  BookingCancelledController(this.bookingCancelledModelObj);

  TextEditingController statusErrorCController = TextEditingController();

  TextEditingController statusErrorCOneController = TextEditingController();

  Rx<BookingCancelledModel> bookingCancelledModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    statusErrorCController.dispose();
    statusErrorCOneController.dispose();
  }
}
