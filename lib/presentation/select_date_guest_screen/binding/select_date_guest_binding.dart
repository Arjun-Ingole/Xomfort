import '../controller/select_date_guest_controller.dart';
import 'package:get/get.dart';

class SelectDateGuestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectDateGuestController());
  }
}
