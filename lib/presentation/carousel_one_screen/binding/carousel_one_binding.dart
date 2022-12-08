import '../controller/carousel_one_controller.dart';
import 'package:get/get.dart';

class CarouselOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarouselOneController());
  }
}
