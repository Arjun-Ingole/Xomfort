import '../controller/let_s_you_in_controller.dart';
import 'package:get/get.dart';

class LetSYouInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LetSYouInController());
  }
}
