import '../controller/hotel_details_controller.dart';
import 'package:get/get.dart';

class HotelDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelDetailsController());
  }
}
