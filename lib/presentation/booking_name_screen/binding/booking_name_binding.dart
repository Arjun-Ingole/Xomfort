import '../controller/booking_name_controller.dart';
import 'package:get/get.dart';

class BookingNameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingNameController());
  }
}
