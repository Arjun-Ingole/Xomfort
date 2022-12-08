import '../controller/forgot_password_type_otp_controller.dart';
import 'package:get/get.dart';

class ForgotPasswordTypeOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordTypeOtpController());
  }
}
