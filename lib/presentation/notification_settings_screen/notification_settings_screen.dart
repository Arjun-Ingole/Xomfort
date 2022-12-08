import 'controller/notification_settings_controller.dart';import 'package:flutter/material.dart';import 'package:xomfort/core/app_export.dart';import 'package:xomfort/widgets/app_bar/appbar_image.dart';import 'package:xomfort/widgets/app_bar/appbar_title.dart';import 'package:xomfort/widgets/app_bar/custom_app_bar.dart';import 'package:xomfort/widgets/custom_switch.dart';class NotificationSettingsScreen extends GetWidget<NotificationSettingsController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray900, appBar: CustomAppBar(height: getVerticalSize(56.00), leadingWidth: 19, leading: AppbarImage(height: getVerticalSize(15.00), width: getHorizontalSize(19.00), svgPath: ImageConstant.imgArrowleft, margin: getMargin(top: 4, bottom: 4), onTap: onTapArrowleft19), title: AppbarTitle(text: "lbl_notifications".tr, margin: getMargin(left: 20))), body: Container(width: size.width, child: SingleChildScrollView(child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 44, right: 24), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(top: 2, bottom: 3), child: Text("msg_general_notific".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18.copyWith(letterSpacing: 0.20))), Obx(() => CustomSwitch(value: controller.isSelectedSwitch.value, onChanged: (value) {controller.isSelectedSwitch.value = value;}))]))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 31, right: 24), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(top: 2, bottom: 3), child: Text("lbl_sound".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18.copyWith(letterSpacing: 0.20))), Obx(() => CustomSwitch(value: controller.isSelectedSwitch1.value, onChanged: (value) {controller.isSelectedSwitch1.value = value;}))]))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 31, right: 24), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(top: 2, bottom: 3), child: Text("lbl_vibrate".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18.copyWith(letterSpacing: 0.20))), Obx(() => CustomSwitch(value: controller.isSelectedSwitch2.value, onChanged: (value) {controller.isSelectedSwitch2.value = value;}))]))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 31, right: 24), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(top: 5), child: Text("lbl_app_updates".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18.copyWith(letterSpacing: 0.20))), Obx(() => CustomSwitch(margin: getMargin(bottom: 1), value: controller.isSelectedSwitch3.value, onChanged: (value) {controller.isSelectedSwitch3.value = value;}))]))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 30, right: 24), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(top: 2, bottom: 3), child: Text("msg_new_service_ava".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18.copyWith(letterSpacing: 0.20))), Obx(() => CustomSwitch(value: controller.isSelectedSwitch4.value, onChanged: (value) {controller.isSelectedSwitch4.value = value;}))]))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 31, right: 24, bottom: 502), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(top: 5), child: Text("msg_new_tips_availa".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18.copyWith(letterSpacing: 0.20))), Obx(() => CustomSwitch(margin: getMargin(bottom: 1), value: controller.isSelectedSwitch5.value, onChanged: (value) {controller.isSelectedSwitch5.value = value;}))])))]))))); } 
onTapArrowleft19() { Get.back(); } 
 }