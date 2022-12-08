import '../forgot_password_screen/widgets/listvolume_item_widget.dart';import 'controller/forgot_password_controller.dart';import 'models/listvolume_item_model.dart';import 'package:flutter/material.dart';import 'package:xomfort/core/app_export.dart';import 'package:xomfort/widgets/app_bar/appbar_image.dart';import 'package:xomfort/widgets/app_bar/appbar_title.dart';import 'package:xomfort/widgets/app_bar/custom_app_bar.dart';import 'package:xomfort/widgets/custom_button.dart';class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray900, appBar: CustomAppBar(height: getVerticalSize(56.00), leadingWidth: 19, leading: AppbarImage(height: getVerticalSize(15.00), width: getHorizontalSize(19.00), svgPath: ImageConstant.imgArrowleft, margin: getMargin(top: 2, bottom: 6), onTap: onTapArrowleft1), title: AppbarTitle(text: "lbl_forgot_password".tr, margin: getMargin(left: 20))), body: Container(width: size.width, child: SingleChildScrollView(child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 72, right: 24), child: CommonImageView(imagePath: ImageConstant.imgImage, height: getSize(240.00), width: getSize(240.00)))), Align(alignment: Alignment.center, child: Container(width: double.infinity, margin: getMargin(left: 24, top: 44, right: 24), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(20.00))), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Container(width: getHorizontalSize(370.00), margin: getMargin(right: 9), child: Text("msg_select_which_co".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular16WhiteA700.copyWith(letterSpacing: 0.20)))), Padding(padding: getPadding(top: 24), child: Obx(() => ListView.builder(physics: BouncingScrollPhysics(), shrinkWrap: true, itemCount: controller.forgotPasswordModelObj.value.listvolumeItemList.length, itemBuilder: (context, index) {ListvolumeItemModel model = controller.forgotPasswordModelObj.value.listvolumeItemList[index]; return ListvolumeItemWidget(model);})))]))), CustomButton(width: 380, text: "lbl_continue".tr, margin: getMargin(left: 24, top: 39, right: 24, bottom: 20), alignment: Alignment.center)]))))); } 
onTapArrowleft1() { Get.back(); } 
 }
