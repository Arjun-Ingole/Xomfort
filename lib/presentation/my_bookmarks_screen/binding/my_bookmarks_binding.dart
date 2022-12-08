import '../controller/my_bookmarks_controller.dart';
import 'package:get/get.dart';

class MyBookmarksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyBookmarksController());
  }
}
