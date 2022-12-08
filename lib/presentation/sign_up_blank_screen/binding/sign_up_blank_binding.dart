import '../controller/sign_up_blank_controller.dart';
import 'package:get/get.dart';

class SignUpBlankBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpBlankController());
  }
}
