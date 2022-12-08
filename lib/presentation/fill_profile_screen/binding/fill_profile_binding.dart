import '../controller/fill_profile_controller.dart';
import 'package:get/get.dart';

class FillProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FillProfileController());
  }
}
