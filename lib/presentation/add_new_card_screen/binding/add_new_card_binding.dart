import '../controller/add_new_card_controller.dart';
import 'package:get/get.dart';

class AddNewCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewCardController());
  }
}
