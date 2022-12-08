import '../controller/carousel_three_controller.dart';
import 'package:get/get.dart';

class CarouselThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarouselThreeController());
  }
}
