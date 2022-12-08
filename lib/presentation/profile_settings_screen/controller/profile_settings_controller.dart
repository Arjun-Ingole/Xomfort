import 'package:xomfort/core/app_export.dart';
import 'package:xomfort/presentation/profile_settings_screen/models/profile_settings_model.dart';
import 'package:xomfort/widgets/custom_bottom_bar.dart';

class ProfileSettingsController extends GetxController {
  Rx<ProfileSettingsModel> profileSettingsModelObj = ProfileSettingsModel().obs;

  RxBool isSelectedSwitch = false.obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
