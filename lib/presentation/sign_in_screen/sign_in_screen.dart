import 'controller/sign_in_controller.dart';import 'package:flutter/material.dart';import 'package:xomfort/core/app_export.dart';import 'package:xomfort/widgets/custom_button.dart';import 'package:xomfort/widgets/custom_checkbox.dart';import 'package:xomfort/widgets/custom_text_form_field.dart';class SignInScreen extends GetWidget<SignInController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray900, body: Container(width: size.width, child: SingleChildScrollView(child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: getPadding(left: 28, top: 17, right: 28), child: InkWell(onTap: () {onTapImgArrowleft();}, child: CommonImageView(svgPath: ImageConstant.imgArrowleft, height: getVerticalSize(15.00), width: getHorizontalSize(19.00)))), Container(width: getHorizontalSize(285.00), margin: getMargin(left: 24, top: 96, right: 24), child: Text("msg_login_to_your_a".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold48)), CustomTextFormField(width: 380, focusNode: FocusNode(), controller: controller.emailController, hintText: "lbl_email".tr, margin: getMargin(left: 24, top: 57, right: 24), padding: TextFormFieldPadding.PaddingTB25, fontStyle: TextFormFieldFontStyle.UrbanistRegular14, alignment: Alignment.center, prefix: Container(margin: getMargin(left: 21, top: 22, right: 13, bottom: 22), child: CommonImageView(svgPath: ImageConstant.imgCheckmark)), prefixConstraints: BoxConstraints(minWidth: getSize(15.00), minHeight: getSize(15.00))), Obx(() => CustomTextFormField(width: 380, focusNode: FocusNode(), controller: controller.passwordController, hintText: "lbl_password".tr, margin: getMargin(left: 24, top: 24, right: 24), padding: TextFormFieldPadding.PaddingTB25, fontStyle: TextFormFieldFontStyle.UrbanistRegular14, textInputAction: TextInputAction.done, alignment: Alignment.center, prefix: Container(margin: getMargin(left: 22, top: 21, right: 14, bottom: 21), child: CommonImageView(svgPath: ImageConstant.imgLock)), prefixConstraints: BoxConstraints(minWidth: getSize(16.00), minHeight: getSize(16.00)), suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: getMargin(left: 30, top: 22, right: 21, bottom: 22), child: CommonImageView(svgPath: controller.isShowPassword.value ? ImageConstant.imgDashboard : ImageConstant.imgDashboard))), suffixConstraints: BoxConstraints(minWidth: getHorizontalSize(16.00), minHeight: getVerticalSize(14.00)), isObscureText: !controller.isShowPassword.value)), Obx(() => CustomCheckbox(text: "lbl_remember_me".tr, iconSize: 24, value: controller.checkbox.value, padding: getPadding(left: 24, top: 24, right: 24), variant: CheckboxVariant.OutlineCyan601, shape: CheckboxShape.RoundedBorder4, onChange: (value) {controller.checkbox.value = value;})), CustomButton(width: 380, text: "lbl_sign_in".tr, margin: getMargin(left: 24, top: 24, right: 24), variant: ButtonVariant.FillCyan600, alignment: Alignment.center), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 29, right: 24), child: Text("msg_forgot_the_pass".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold16Cyan601.copyWith(letterSpacing: 0.20)))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 61, right: 24), child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [Container(height: getVerticalSize(1.00), width: getHorizontalSize(96.00), margin: getMargin(top: 9, bottom: 7), decoration: BoxDecoration(color: ColorConstant.gray800)), Padding(padding: getPadding(left: 16), child: Text("msg_or_continue_wit".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray100.copyWith(letterSpacing: 0.20))), Container(height: getVerticalSize(1.00), width: getHorizontalSize(96.00), margin: getMargin(left: 16, top: 9, bottom: 7), decoration: BoxDecoration(color: ColorConstant.gray800))]))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 33, right: 24), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(16.00)), child: CommonImageView(imagePath: ImageConstant.imgGroup41, height: getVerticalSize(60.00), width: getHorizontalSize(303.00), fit: BoxFit.cover)))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 51, right: 24, bottom: 48), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [Padding(padding: getPadding(bottom: 3), child: Text("msg_don_t_have_an_a".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular14.copyWith(letterSpacing: 0.20))), Padding(padding: getPadding(left: 8, top: 2), child: Text("lbl_sign_up".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold14.copyWith(letterSpacing: 0.20)))])))]))))); } 
onTapImgArrowleft() { Get.back(); } 
 }
