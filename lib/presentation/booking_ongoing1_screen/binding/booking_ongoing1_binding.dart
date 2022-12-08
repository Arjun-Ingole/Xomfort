import '../controller/booking_ongoing1_controller.dart';
import 'package:get/get.dart';

class BookingOngoing1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingOngoing1Controller());
  }
}
