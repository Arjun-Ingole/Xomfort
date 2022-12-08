import '../controller/filter_result_controller.dart';
import 'package:get/get.dart';

class FilterResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FilterResultController());
  }
}
