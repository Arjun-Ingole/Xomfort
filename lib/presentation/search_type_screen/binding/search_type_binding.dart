import '../controller/search_type_controller.dart';
import 'package:get/get.dart';

class SearchTypeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchTypeController());
  }
}
