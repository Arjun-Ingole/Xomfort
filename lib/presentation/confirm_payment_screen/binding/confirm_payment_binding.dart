import '../controller/confirm_payment_controller.dart';
import 'package:get/get.dart';

class ConfirmPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmPaymentController());
  }
}
