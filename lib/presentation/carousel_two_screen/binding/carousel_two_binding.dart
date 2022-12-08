import '../controller/carousel_two_controller.dart';
import 'package:get/get.dart';

class CarouselTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarouselTwoController());
  }
}
