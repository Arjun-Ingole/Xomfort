import '../card_added_screen/widgets/card_added_item_widget.dart';import 'controller/card_added_controller.dart';import 'models/card_added_item_model.dart';import 'package:flutter/material.dart';import 'package:xomfort/core/app_export.dart';import 'package:xomfort/widgets/app_bar/appbar_image.dart';import 'package:xomfort/widgets/app_bar/appbar_title.dart';import 'package:xomfort/widgets/app_bar/custom_app_bar.dart';import 'package:xomfort/widgets/custom_button.dart';class CardAddedScreen extends GetWidget<CardAddedController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray900, appBar: CustomAppBar(height: getVerticalSize(56.00), leadingWidth: 19, leading: AppbarImage(height: getVerticalSize(15.00), width: getHorizontalSize(19.00), svgPath: ImageConstant.imgArrowleft, margin: getMargin(top: 2, bottom: 7), onTap: onTapArrowleft14), title: AppbarTitle(text: "lbl_payment".tr, margin: getMargin(left: 20)), actions: [AppbarImage(height: getVerticalSize(20.00), width: getHorizontalSize(24.00), svgPath: ImageConstant.imgQrcode, margin: getMargin(bottom: 5))]), body: Container(width: size.width, child: SingleChildScrollView(child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: getPadding(left: 24, top: 43, right: 24), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(top: 1), child: Text("lbl_payment_methods".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold18)), Padding(padding: getPadding(bottom: 2), child: Text("lbl_add_new_card".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold16Cyan601.copyWith(letterSpacing: 0.20)))])), Padding(padding: getPadding(left: 24, top: 28, right: 24), child: Obx(() => ListView.builder(physics: BouncingScrollPhysics(), shrinkWrap: true, itemCount: controller.cardAddedModelObj.value.cardAddedItemList.length, itemBuilder: (context, index) {CardAddedItemModel model = controller.cardAddedModelObj.value.cardAddedItemList[index]; return CardAddedItemWidget(model);}))), Container(width: double.infinity, margin: getMargin(left: 24, top: 33, right: 24), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(16.00))), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(right: 10), child: Text("msg_pay_with_debit".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold18)), Container(margin: getMargin(top: 28), decoration: AppDecoration.outlineBlack90014.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(left: 24, top: 26, bottom: 26), child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(4.00)), child: CommonImageView(imagePath: ImageConstant.imgImage27X44, height: getVerticalSize(27.00), width: getHorizontalSize(44.00), fit: BoxFit.cover)), Padding(padding: getPadding(left: 12, top: 4, bottom: 4), child: Text("msg".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold18))])), Container(margin: getMargin(top: 30, right: 32, bottom: 30), decoration: AppDecoration.outlineCyan6011.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getSize(11.00), width: getSize(11.00), margin: getMargin(all: 4), decoration: BoxDecoration(color: ColorConstant.cyan601, borderRadius: BorderRadius.circular(getHorizontalSize(5.83))))]))]))])), CustomButton(width: 380, text: "lbl_continue".tr, margin: getMargin(left: 24, top: 193, right: 24, bottom: 20))]))))); } 
onTapArrowleft14() { Get.back(); } 
 }