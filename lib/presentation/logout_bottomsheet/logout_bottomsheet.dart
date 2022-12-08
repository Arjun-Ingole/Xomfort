import 'controller/logout_controller.dart';import 'package:flutter/material.dart';import 'package:xomfort/core/app_export.dart';import 'package:xomfort/widgets/custom_button.dart';
// ignore_for_file: must_be_immutable
class LogoutBottomsheet extends StatelessWidget {LogoutBottomsheet(this.controller);

LogoutController controller;

@override Widget build(BuildContext context) { return SingleChildScrollView(child: Container(width: double.infinity, decoration: AppDecoration.outlineGray8002.copyWith(borderRadius: BorderRadiusStyle.customBorderTL40), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(3.00), width: getHorizontalSize(38.00), margin: getMargin(left: 24, top: 8, right: 24), decoration: BoxDecoration(color: ColorConstant.gray700, borderRadius: BorderRadius.circular(getHorizontalSize(1.50)))), Padding(padding: getPadding(left: 24, top: 29, right: 24), child: Text("lbl_logout".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold24RedA200)), Padding(padding: getPadding(left: 24, top: 43, right: 24), child: Text("msg_are_you_sure_yo".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold20)), CustomButton(width: 380, text: "lbl_logout".tr, margin: getMargin(left: 24, top: 24, right: 24), variant: ButtonVariant.FillCyan601), CustomButton(width: 380, text: "lbl_cancel".tr, margin: getMargin(left: 24, top: 12, right: 24, bottom: 20), variant: ButtonVariant.FillGray800, onTap: onTapCancel)]))); } 
onTapCancel() { Get.back(); } 
 }
