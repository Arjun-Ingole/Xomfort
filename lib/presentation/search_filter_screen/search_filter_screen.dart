import '../search_filter_screen/widgets/search_filter_item_widget.dart';
import 'controller/search_filter_controller.dart';
import 'models/search_filter_item_model.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';
import 'package:xomfort/widgets/app_bar/appbar_image.dart';
import 'package:xomfort/widgets/app_bar/custom_app_bar.dart';
import 'package:xomfort/widgets/custom_bottom_bar.dart';
import 'package:xomfort/widgets/custom_button.dart';
import 'package:xomfort/widgets/custom_checkbox.dart';
import 'package:xomfort/widgets/custom_icon_button.dart';

class SearchFilterScreen extends GetWidget<SearchFilterController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          centerTitle: true,
          title: Container(
            decoration: AppDecoration.fillBluegray901.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                AppbarImage(
                  height: getVerticalSize(
                    16.00,
                  ),
                  width: getHorizontalSize(
                    15.00,
                  ),
                  svgPath: ImageConstant.imgSearch,
                  margin: getMargin(
                    left: 22,
                    top: 20,
                    bottom: 19,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 14,
                    top: 20,
                    bottom: 21,
                  ),
                  child: Text(
                    "lbl_search".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRegular14Gray600.copyWith(
                      letterSpacing: 0.20,
                    ),
                  ),
                ),
                AppbarImage(
                  height: getVerticalSize(
                    12.00,
                  ),
                  width: getHorizontalSize(
                    13.00,
                  ),
                  svgPath: ImageConstant.imgMenu,
                  margin: getMargin(
                    left: 248,
                    top: 21,
                    right: 23,
                    bottom: 22,
                  ),
                ),
              ],
            ),
          ),
          styleType: Style.bgFillBluegray901,
        ),
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: getVerticalSize(
                882.00,
              ),
              width: size.width,
              decoration: AppDecoration.fillGray900,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 34,
                        right: 24,
                        bottom: 34,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 4,
                                  bottom: 5,
                                ),
                                child: Text(
                                  "msg_recommended_58".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold18,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 2,
                                  right: 3,
                                  bottom: 2,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgMenu23X61,
                                  height: getVerticalSize(
                                    23.00,
                                  ),
                                  width: getHorizontalSize(
                                    61.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: getMargin(
                              top: 22,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                            ),
                            child: Obx(
                              () => ListView.builder(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: controller.searchFilterModelObj.value
                                    .searchFilterItemList.length,
                                itemBuilder: (context, index) {
                                  SearchFilterItemModel model = controller
                                      .searchFilterModelObj
                                      .value
                                      .searchFilterItemList[index];
                                  return SearchFilterItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: getPadding(
                        left: 10,
                        top: 104,
                        bottom: 104,
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
                            decoration:
                                AppDecoration.txtOutlineCyan601.copyWith(
                              borderRadius: BorderRadiusStyle.txtCircleBorder19,
                            ),
                            child: Text(
                              "lbl_recommended".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistSemiBold16Cyan601
                                  .copyWith(
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
                            decoration:
                                AppDecoration.txtOutlineCyan601.copyWith(
                              borderRadius: BorderRadiusStyle.txtCircleBorder19,
                            ),
                            child: Text(
                              "lbl_popular".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistSemiBold16Cyan601
                                  .copyWith(
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
                            decoration:
                                AppDecoration.txtOutlineCyan601.copyWith(
                              borderRadius: BorderRadiusStyle.txtCircleBorder19,
                            ),
                            child: Text(
                              "lbl_trending".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtUrbanistSemiBold16Cyan601
                                  .copyWith(
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
                            decoration:
                                AppDecoration.txtOutlineCyan601.copyWith(
                              borderRadius: BorderRadiusStyle.txtCircleBorder19,
                            ),
                            child: Text(
                              "lbl_nearby".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtUrbanistSemiBold16Cyan601
                                  .copyWith(
                                letterSpacing: 0.20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: AppDecoration.fillBlack900b2,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(
                                top: 35,
                              ),
                              child: Container(
                                decoration:
                                    AppDecoration.outlineGray8002.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL40,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: getVerticalSize(
                                          3.00,
                                        ),
                                        width: getHorizontalSize(
                                          38.00,
                                        ),
                                        margin: getMargin(
                                          left: 24,
                                          top: 8,
                                          right: 24,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.gray700,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              1.50,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 24,
                                          top: 26,
                                          right: 24,
                                        ),
                                        child: Text(
                                          "lbl_filter_hotel".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtUrbanistRomanBold24,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 24,
                                          top: 53,
                                          right: 24,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 1,
                                              ),
                                              child: Text(
                                                "lbl_country".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold18,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                bottom: 2,
                                              ),
                                              child: Text(
                                                "lbl_see_all".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold16Cyan601
                                                    .copyWith(
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 10,
                                          top: 19,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              padding: getPadding(
                                                left: 20,
                                                top: 11,
                                                right: 20,
                                                bottom: 10,
                                              ),
                                              decoration: AppDecoration
                                                  .txtFillCyan601
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtCircleBorder19,
                                              ),
                                              child: Text(
                                                "lbl_france".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistSemiBold16
                                                    .copyWith(
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
                                              decoration: AppDecoration
                                                  .txtOutlineCyan601
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtCircleBorder19,
                                              ),
                                              child: Text(
                                                "lbl_italia".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistSemiBold16Cyan601
                                                    .copyWith(
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
                                              decoration: AppDecoration
                                                  .txtOutlineCyan601
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtCircleBorder19,
                                              ),
                                              child: Text(
                                                "lbl_turkiye".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistSemiBold16Cyan601
                                                    .copyWith(
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
                                              decoration: AppDecoration
                                                  .txtOutlineCyan601
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtCircleBorder19,
                                              ),
                                              child: Text(
                                                "lbl_germany".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistSemiBold16Cyan601
                                                    .copyWith(
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
                                        top: 25,
                                        right: 24,
                                      ),
                                      child: Text(
                                        "lbl_sort_results".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRomanBold18,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 10,
                                          top: 22,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              padding: getPadding(
                                                left: 20,
                                                top: 13,
                                                right: 20,
                                                bottom: 8,
                                              ),
                                              decoration: AppDecoration
                                                  .txtFillCyan601
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtCircleBorder19,
                                              ),
                                              child: Text(
                                                "msg_highest_popular".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistSemiBold16
                                                    .copyWith(
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
                                              decoration: AppDecoration
                                                  .txtOutlineCyan601
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtCircleBorder19,
                                              ),
                                              child: Text(
                                                "lbl_highest_price".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistSemiBold16Cyan601
                                                    .copyWith(
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
                                              decoration: AppDecoration
                                                  .txtOutlineCyan601
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtCircleBorder19,
                                              ),
                                              child: Text(
                                                "lbl_lowest_price".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtUrbanistSemiBold16Cyan601
                                                    .copyWith(
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
                                              decoration: AppDecoration
                                                  .txtOutlineCyan601
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtCircleBorder19,
                                              ),
                                              child: Text(
                                                "lbl_review_score".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtUrbanistSemiBold16Cyan601
                                                    .copyWith(
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: getMargin(
                                                left: 12,
                                                right: 210,
                                              ),
                                              decoration:
                                                  AppDecoration.outlineCyan601,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                      padding: getPadding(
                                                        left: 20,
                                                        top: 8,
                                                        bottom: 8,
                                                      ),
                                                      child: Text(
                                                        "lbl_trending".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .txtUrbanistSemiBold16Cyan601
                                                            .copyWith(
                                                          letterSpacing: 0.20,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 24,
                                        top: 27,
                                        right: 24,
                                      ),
                                      child: Text(
                                        "msg_price_range_per".tr,
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
                                          top: 20,
                                          right: 10,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: getPadding(
                                                  left: 54,
                                                  right: 54,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Container(
                                                      height: getVerticalSize(
                                                        24.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        36.00,
                                                      ),
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child:
                                                                CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgMail,
                                                              height:
                                                                  getVerticalSize(
                                                                24.00,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                36.00,
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                left: 6,
                                                                top: 3,
                                                                right: 10,
                                                                bottom: 10,
                                                              ),
                                                              child: Text(
                                                                "lbl_182".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtSourceSansProSemiBold14,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      height: getVerticalSize(
                                                        24.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        36.00,
                                                      ),
                                                      margin: getMargin(
                                                        left: 83,
                                                      ),
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child:
                                                                CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgMail,
                                                              height:
                                                                  getVerticalSize(
                                                                24.00,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                36.00,
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                left: 6,
                                                                top: 3,
                                                                right: 10,
                                                                bottom: 10,
                                                              ),
                                                              child: Text(
                                                                "lbl_50".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtSourceSansProSemiBold14,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 2,
                                              ),
                                              child: SliderTheme(
                                                data: SliderThemeData(
                                                  trackShape:
                                                      RoundedRectSliderTrackShape(),
                                                  activeTrackColor:
                                                      ColorConstant.cyan600,
                                                  inactiveTrackColor:
                                                      ColorConstant.gray701,
                                                  thumbColor:
                                                      ColorConstant.gray800,
                                                  thumbShape:
                                                      RoundSliderThumbShape(),
                                                ),
                                                child: RangeSlider(
                                                  values: RangeValues(
                                                    0,
                                                    0,
                                                  ),
                                                  min: 0.0,
                                                  max: 100.0,
                                                  onChanged: (value) {},
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
                                        top: 28,
                                        right: 24,
                                      ),
                                      child: Text(
                                        "lbl_star_rating".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRomanBold18,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 10,
                                          top: 19,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              decoration: AppDecoration
                                                  .fillCyan601
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder20,
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 21,
                                                      top: 12,
                                                      bottom: 12,
                                                    ),
                                                    child: CommonImageView(
                                                      svgPath:
                                                          ImageConstant.imgStar,
                                                      height: getVerticalSize(
                                                        12.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        13.00,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 9,
                                                      top: 11,
                                                      right: 20,
                                                      bottom: 10,
                                                    ),
                                                    child: Text(
                                                      "lbl_5".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold16
                                                          .copyWith(
                                                        letterSpacing: 0.20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: getMargin(
                                                left: 12,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineCyan601
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder20,
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 21,
                                                      top: 12,
                                                      bottom: 12,
                                                    ),
                                                    child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar12X13,
                                                      height: getVerticalSize(
                                                        12.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        13.00,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 9,
                                                      top: 11,
                                                      right: 20,
                                                      bottom: 10,
                                                    ),
                                                    child: Text(
                                                      "lbl_4".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold16Cyan601
                                                          .copyWith(
                                                        letterSpacing: 0.20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: getMargin(
                                                left: 12,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineCyan601
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder20,
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 21,
                                                      top: 12,
                                                      bottom: 12,
                                                    ),
                                                    child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar12X13,
                                                      height: getVerticalSize(
                                                        12.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        13.00,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 9,
                                                      top: 11,
                                                      right: 20,
                                                      bottom: 10,
                                                    ),
                                                    child: Text(
                                                      "lbl_3".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold16Cyan601
                                                          .copyWith(
                                                        letterSpacing: 0.20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: getMargin(
                                                left: 12,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineCyan601
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder20,
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 21,
                                                      top: 12,
                                                      bottom: 12,
                                                    ),
                                                    child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar12X13,
                                                      height: getVerticalSize(
                                                        12.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        13.00,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 9,
                                                      top: 11,
                                                      right: 20,
                                                      bottom: 10,
                                                    ),
                                                    child: Text(
                                                      "lbl_22".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold16Cyan601
                                                          .copyWith(
                                                        letterSpacing: 0.20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: getMargin(
                                                left: 12,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineCyan601
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder20,
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 21,
                                                      top: 12,
                                                      bottom: 12,
                                                    ),
                                                    child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar12X13,
                                                      height: getVerticalSize(
                                                        12.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        13.00,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 9,
                                                      top: 11,
                                                      right: 20,
                                                      bottom: 10,
                                                    ),
                                                    child: Text(
                                                      "lbl_1".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold16Cyan601
                                                          .copyWith(
                                                        letterSpacing: 0.20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
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
                                          top: 25,
                                          right: 10,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              "lbl_facilities".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanBold18,
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 1,
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "lbl_see_all".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold16Cyan601
                                                    .copyWith(
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 10,
                                          top: 22,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            CustomIconButton(
                                              height: 24,
                                              width: 24,
                                              child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgVectorWhiteA700,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 12,
                                                top: 5,
                                                bottom: 4,
                                              ),
                                              child: Text(
                                                "lbl_wifi".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistSemiBold14WhiteA700
                                                    .copyWith(
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                            CustomIconButton(
                                              height: 24,
                                              width: 24,
                                              margin: getMargin(
                                                left: 12,
                                              ),
                                              child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgVectorWhiteA700,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 12,
                                                top: 6,
                                                bottom: 2,
                                              ),
                                              child: Text(
                                                "lbl_swimming_pool".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistSemiBold14WhiteA700
                                                    .copyWith(
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                            Obx(
                                              () => CustomCheckbox(
                                                text: "lbl_parking".tr,
                                                iconSize: 24,
                                                value:
                                                    controller.checkbox.value,
                                                padding: getPadding(
                                                  left: 12,
                                                ),
                                                onChange: (value) {
                                                  controller.checkbox.value =
                                                      value;
                                                },
                                              ),
                                            ),
                                            Obx(
                                              () => CustomCheckbox(
                                                text: "lbl_restaurant".tr,
                                                iconSize: 24,
                                                value:
                                                    controller.checkbox1.value,
                                                padding: getPadding(
                                                  left: 12,
                                                ),
                                                onChange: (value) {
                                                  controller.checkbox1.value =
                                                      value;
                                                },
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
                                          top: 27,
                                          right: 10,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 1,
                                              ),
                                              child: Text(
                                                "msg_accommodation_t".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold18,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                bottom: 2,
                                              ),
                                              child: Text(
                                                "lbl_see_all".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold16Cyan601
                                                    .copyWith(
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 10,
                                          top: 20,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            CustomIconButton(
                                              height: 24,
                                              width: 24,
                                              child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgVectorWhiteA700,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 12,
                                                top: 4,
                                                bottom: 5,
                                              ),
                                              child: Text(
                                                "lbl_hotels".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistSemiBold14WhiteA700
                                                    .copyWith(
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                            Obx(
                                              () => CustomCheckbox(
                                                text: "lbl_resorts".tr,
                                                iconSize: 24,
                                                value:
                                                    controller.checkbox2.value,
                                                padding: getPadding(
                                                  left: 12,
                                                ),
                                                onChange: (value) {
                                                  controller.checkbox2.value =
                                                      value;
                                                },
                                              ),
                                            ),
                                            CustomIconButton(
                                              height: 24,
                                              width: 24,
                                              margin: getMargin(
                                                left: 12,
                                              ),
                                              child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgVectorWhiteA700,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 12,
                                                top: 4,
                                                bottom: 5,
                                              ),
                                              child: Text(
                                                "lbl_villas".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistSemiBold14WhiteA700
                                                    .copyWith(
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                            Obx(
                                              () => CustomCheckbox(
                                                text: "lbl_apartments".tr,
                                                iconSize: 24,
                                                value:
                                                    controller.checkbox3.value,
                                                padding: getPadding(
                                                  left: 12,
                                                ),
                                                onChange: (value) {
                                                  controller.checkbox3.value =
                                                      value;
                                                },
                                              ),
                                            ),
                                            Obx(
                                              () => CustomCheckbox(
                                                text: "lbl_homestays".tr,
                                                iconSize: 24,
                                                value:
                                                    controller.checkbox4.value,
                                                padding: getPadding(
                                                  left: 12,
                                                ),
                                                onChange: (value) {
                                                  controller.checkbox4.value =
                                                      value;
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        margin: getMargin(
                                          left: 10,
                                          top: 48,
                                          right: 10,
                                          bottom: 48,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              29.00,
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            CustomButton(
                                              width: 184,
                                              text: "lbl_reset".tr,
                                              variant:
                                                  ButtonVariant.FillGray800,
                                            ),
                                            CustomButton(
                                              width: 184,
                                              text: "lbl_apply_filter".tr,
                                              margin: getMargin(
                                                left: 12,
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            controller.type.value = type;
          },
        ),
      ),
    );
  }

  ///Handling view based on bottom click actions
  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return getDefaultWidget();
      case BottomBarEnum.Search:
        return getDefaultWidget();
      case BottomBarEnum.Booking:
        return getDefaultWidget();
      case BottomBarEnum.Profile:
        return getDefaultWidget();
      default:
        return getDefaultWidget();
    }
  }
}
