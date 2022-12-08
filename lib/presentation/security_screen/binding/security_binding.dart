import '../controller/security_controller.dart';
import 'package:get/get.dart';

class SecurityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecurityController());
  }
}
