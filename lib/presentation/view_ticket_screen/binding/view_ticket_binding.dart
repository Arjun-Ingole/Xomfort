import '../controller/view_ticket_controller.dart';
import 'package:get/get.dart';

class ViewTicketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViewTicketController());
  }
}
