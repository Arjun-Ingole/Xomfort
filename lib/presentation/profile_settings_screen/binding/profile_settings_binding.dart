import '../controller/profile_settings_controller.dart';
import 'package:get/get.dart';

class ProfileSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileSettingsController());
  }
}
