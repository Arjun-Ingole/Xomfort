import '../controller/card_added_controller.dart';
import 'package:get/get.dart';

class CardAddedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardAddedController());
  }
}
