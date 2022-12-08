import '../controller/recently_booked_controller.dart';
import 'package:get/get.dart';

class RecentlyBookedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecentlyBookedController());
  }
}
