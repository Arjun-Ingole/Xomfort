import '../controller/notification_settings_controller.dart';
import 'package:get/get.dart';

class NotificationSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationSettingsController());
  }
}
