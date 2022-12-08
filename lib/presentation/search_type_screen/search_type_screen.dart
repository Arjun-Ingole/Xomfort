import 'controller/search_type_controller.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';
import 'package:xomfort/widgets/custom_search_view.dart';

class SearchTypeScreen extends GetWidget<SearchTypeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSearchView(
                  width: 380,
                  focusNode: FocusNode(),
                  controller: controller.searchBarController,
                  hintText: "lbl_hotel".tr,
                  margin: getMargin(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  variant: SearchViewVariant.OutlineCyan601,
                  fontStyle: SearchViewFontStyle.UrbanistSemiBold14,
                  alignment: Alignment.center,
                  prefix: Container(
                    margin: getMargin(
                      left: 22,
                      top: 20,
                      right: 14,
                      bottom: 19,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgSearchCyan60116X15,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    minWidth: getSize(
                      16.00,
                    ),
                    minHeight: getSize(
                      16.00,
                    ),
                  ),
                  suffix: Padding(
                    padding: EdgeInsets.only(
                      right: getHorizontalSize(
                        15.00,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        controller.searchBarController.clear;
                      },
                      icon: Icon(
                        Icons.clear,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    minWidth: getHorizontalSize(
                      13.00,
                    ),
                    minHeight: getVerticalSize(
                      12.00,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      left: 10,
                      top: 24,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          padding: getPadding(
                            left: 20,
                            top: 11,
                            right: 20,
                            bottom: 10,
                          ),
                          decoration: AppDecoration.txtFillCyan601.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder19,
                          ),
                          child: Text(
                            "lbl_all_hotel".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistSemiBold16.copyWith(
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 12,
                          ),
                          padding: getPadding(
                            left: 20,
                            top: 11,
                            right: 20,
                            bottom: 10,
                          ),
                          decoration: AppDecoration.txtOutlineCyan601.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder19,
                          ),
                          child: Text(
                            "lbl_recommended".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtUrbanistSemiBold16Cyan601.copyWith(
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 12,
                          ),
                          padding: getPadding(
                            left: 20,
                            top: 13,
                            right: 20,
                            bottom: 8,
                          ),
                          decoration: AppDecoration.txtOutlineCyan601.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder19,
                          ),
                          child: Text(
                            "lbl_popular".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtUrbanistSemiBold16Cyan601.copyWith(
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 12,
                          ),
                          padding: getPadding(
                            left: 20,
                            top: 8,
                            right: 20,
                            bottom: 8,
                          ),
                          decoration: AppDecoration.txtOutlineCyan601.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder19,
                          ),
                          child: Text(
                            "lbl_trending".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style:
                                AppStyle.txtUrbanistSemiBold16Cyan601.copyWith(
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 12,
                          ),
                          padding: getPadding(
                            left: 20,
                            top: 8,
                            right: 20,
                            bottom: 8,
                          ),
                          decoration: AppDecoration.txtOutlineCyan601.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder19,
                          ),
                          child: Text(
                            "lbl_nearby".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style:
                                AppStyle.txtUrbanistSemiBold16Cyan601.copyWith(
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 31,
                    right: 24,
                  ),
                  child: Text(
                    "lbl_recent".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanBold18,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 10,
                      top: 29,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_palazzo_hotel".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanMedium18.copyWith(
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        CommonImageView(
                          svgPath: ImageConstant.imgClose,
                          height: getSize(
                            21.00,
                          ),
                          width: getSize(
                            21.00,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 10,
                      top: 30,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                          ),
                          child: Text(
                            "lbl_bulgari_hotel".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanMedium18.copyWith(
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgClose,
                            height: getSize(
                              21.00,
                            ),
                            width: getSize(
                              21.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 10,
                      top: 28,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 1,
                          ),
                          child: Text(
                            "msg_amsterdam_neth".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanMedium18.copyWith(
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        CommonImageView(
                          svgPath: ImageConstant.imgClose,
                          height: getSize(
                            21.00,
                          ),
                          width: getSize(
                            21.00,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 10,
                      top: 30,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 1,
                          ),
                          child: Text(
                            "msg_martinez_cannes".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanMedium18.copyWith(
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        CommonImageView(
                          svgPath: ImageConstant.imgClose,
                          height: getSize(
                            21.00,
                          ),
                          width: getSize(
                            21.00,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 10,
                      top: 30,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                          ),
                          child: Text(
                            "msg_london_united".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanMedium18.copyWith(
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgClose,
                            height: getSize(
                              21.00,
                            ),
                            width: getSize(
                              21.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 10,
                      top: 28,
                      right: 10,
                      bottom: 379,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 1,
                          ),
                          child: Text(
                            "msg_palms_casino_ho".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanMedium18.copyWith(
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                        CommonImageView(
                          svgPath: ImageConstant.imgClose,
                          height: getSize(
                            21.00,
                          ),
                          width: getSize(
                            21.00,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
