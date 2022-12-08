import '../controller/refund_method_controller.dart';
import 'package:get/get.dart';

class RefundMethodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RefundMethodController());
  }
}
