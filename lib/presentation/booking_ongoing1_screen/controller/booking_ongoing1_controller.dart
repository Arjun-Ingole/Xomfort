import 'package:xomfort/core/app_export.dart';
import 'package:xomfort/presentation/booking_ongoing1_screen/models/booking_ongoing1_model.dart';
import 'package:xomfort/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class BookingOngoing1Controller extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<BookingOngoing1Model> bookingOngoing1ModelObj = BookingOngoing1Model().obs;

  late TabController group137Controller =
      Get.put(TabController(vsync: this, length: 3));

  Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
