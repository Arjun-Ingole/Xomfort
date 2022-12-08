import '../controller/choose_payment_method_controller.dart';
import 'package:get/get.dart';

class ChoosePaymentMethodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChoosePaymentMethodController());
  }
}
