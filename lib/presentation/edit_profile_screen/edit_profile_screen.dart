import 'controller/edit_profile_controller.dart';import 'package:flutter/material.dart';import 'package:xomfort/core/app_export.dart';import 'package:xomfort/widgets/app_bar/appbar_image.dart';import 'package:xomfort/widgets/app_bar/appbar_title.dart';import 'package:xomfort/widgets/app_bar/custom_app_bar.dart';import 'package:xomfort/widgets/custom_button.dart';import 'package:xomfort/widgets/custom_text_form_field.dart';class EditProfileScreen extends GetWidget<EditProfileController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray900, appBar: CustomAppBar(height: getVerticalSize(56.00), leadingWidth: 19, leading: AppbarImage(height: getVerticalSize(15.00), width: getHorizontalSize(19.00), svgPath: ImageConstant.imgArrowleft, margin: getMargin(top: 4, bottom: 4), onTap: onTapArrowleft18), title: AppbarTitle(text: "lbl_edit_profile".tr, margin: getMargin(left: 20))), body: Container(width: size.width, child: SingleChildScrollView(child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [Align(alignment: Alignment.center, child: Container(width: double.infinity, margin: getMargin(left: 24, top: 59, right: 24), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(12.00))), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomTextFormField(width: 380, focusNode: FocusNode(), controller: controller.statusFillTyController, hintText: "lbl_daniel_austin".tr), CustomTextFormField(width: 380, focusNode: FocusNode(), controller: controller.statusFillTyOneController, hintText: "lbl_daniel".tr, margin: getMargin(top: 24)), Container(margin: getMargin(top: 24), decoration: AppDecoration.fillBluegray901.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(left: 20, top: 21, bottom: 20), child: Text("lbl_12_27_1995".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold14WhiteA700.copyWith(letterSpacing: 0.20))), Padding(padding: getPadding(top: 19, right: 22, bottom: 19), child: CommonImageView(svgPath: ImageConstant.imgCalendar16X15, height: getVerticalSize(16.00), width: getHorizontalSize(15.00)))])), Container(margin: getMargin(top: 24), decoration: AppDecoration.fillBluegray901.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(left: 20, top: 22, bottom: 18), child: Text("msg_daniel_austin_y".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold14WhiteA700.copyWith(letterSpacing: 0.20))), Padding(padding: getPadding(top: 20, right: 22, bottom: 20), child: CommonImageView(svgPath: ImageConstant.imgClock15X15, height: getSize(15.00), width: getSize(15.00)))])), CustomTextFormField(width: 380, focusNode: FocusNode(), controller: controller.statusFillTyTwoController, hintText: "lbl_united_states".tr, margin: getMargin(top: 24), suffix: Container(margin: getMargin(left: 30, top: 23, right: 25, bottom: 23), child: CommonImageView(svgPath: ImageConstant.imgVector8X10)), suffixConstraints: BoxConstraints(minWidth: getHorizontalSize(10.00), minHeight: getVerticalSize(8.00))), Container(margin: getMargin(top: 24), decoration: AppDecoration.fillBluegray901.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(top: 19, bottom: 19), child: CommonImageView(svgPath: ImageConstant.imgTelevision18X44, height: getVerticalSize(18.00), width: getHorizontalSize(44.00))), Container(margin: getMargin(left: 12, top: 12, right: 12, bottom: 10), padding: getPadding(left: 3, top: 9, bottom: 10), decoration: AppDecoration.txtFillBluegray901, child: Text("msg_1_111_467_378".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold14WhiteA700.copyWith(letterSpacing: 0.20)))])), CustomTextFormField(width: 380, focusNode: FocusNode(), controller: controller.genderController, hintText: "lbl_male".tr, margin: getMargin(top: 24), textInputAction: TextInputAction.done, suffix: Container(margin: getMargin(left: 30, top: 23, right: 25, bottom: 23), child: CommonImageView(svgPath: ImageConstant.imgVector8X10)), suffixConstraints: BoxConstraints(minWidth: getHorizontalSize(10.00), minHeight: getVerticalSize(8.00)))]))), CustomButton(width: 380, text: "lbl_update".tr, margin: getMargin(left: 24, top: 147, right: 24, bottom: 20), alignment: Alignment.center)]))))); } 
onTapArrowleft18() { Get.back(); } 
 }
