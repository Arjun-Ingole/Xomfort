import '../home_screen/widgets/home_screen_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_screen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';
import 'package:xomfort/widgets/app_bar/appbar_image.dart';
import 'package:xomfort/widgets/app_bar/appbar_title.dart';
import 'package:xomfort/widgets/app_bar/custom_app_bar.dart';
import 'package:xomfort/widgets/custom_bottom_bar.dart';
import 'package:xomfort/widgets/custom_search_view.dart';
import 'package:xomfort/widgets/custom_text_form_field.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 30,
          leading: AppbarImage(
            height: getSize(
              30.00,
            ),
            width: getSize(
              30.00,
            ),
            svgPath: ImageConstant.imgGroup,
            margin: getMargin(
              bottom: 1,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_comfort".tr,
            margin: getMargin(
              left: 17,
            ),
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                22.00,
              ),
              width: getHorizontalSize(
                17.00,
              ),
              svgPath: ImageConstant.imgAlarm,
              margin: getMargin(
                top: 3,
                bottom: 6,
              ),
            ),
            AppbarImage(
              height: getVerticalSize(
                22.00,
              ),
              width: getHorizontalSize(
                17.00,
              ),
              svgPath: ImageConstant.imgGroup22X17,
              margin: getMargin(
                left: 30,
                top: 3,
                bottom: 6,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: getPadding(
            left: 10,
            top: 38,
          ),
          child: Padding(
            padding: getPadding(
              bottom: 101,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    right: 10,
                  ),
                  child: Text(
                    "msg_hello_daniel".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanBold32,
                  ),
                ),
                CustomSearchView(
                  width: 380,
                  focusNode: FocusNode(),
                  controller: controller.searchBarController,
                  hintText: "lbl_search".tr,
                  margin: getMargin(
                    top: 27,
                    right: 10,
                  ),
                  prefix: Container(
                    margin: getMargin(
                      left: 22,
                      top: 20,
                      right: 14,
                      bottom: 19,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgSearch,
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: getPadding(
                    top: 30,
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
                          "lbl_recommended".tr,
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
                          style: AppStyle.txtUrbanistSemiBold16Cyan601.copyWith(
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
                          "lbl_trending".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistSemiBold16Cyan601.copyWith(
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
                          style: AppStyle.txtUrbanistSemiBold16Cyan601.copyWith(
                            letterSpacing: 0.20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: getPadding(
                    top: 30,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: getVerticalSize(
                          400.00,
                        ),
                        width: getHorizontalSize(
                          300.00,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    36.00,
                                  ),
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgRectangle3,
                                  height: getVerticalSize(
                                    400.00,
                                  ),
                                  width: getHorizontalSize(
                                    300.00,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomTextFormField(
                                      width: 71,
                                      focusNode: FocusNode(),
                                      controller: controller.ratingsController,
                                      hintText: "lbl_4_8".tr,
                                      margin: getMargin(
                                        left: 23,
                                        right: 23,
                                      ),
                                      variant: TextFormFieldVariant.FillCyan601,
                                      shape: TextFormFieldShape.CircleBorder16,
                                      padding: TextFormFieldPadding.PaddingT9,
                                      alignment: Alignment.centerRight,
                                      prefix: Container(
                                        margin: getMargin(
                                          left: 17,
                                          top: 11,
                                          right: 9,
                                          bottom: 11,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgStar,
                                        ),
                                      ),
                                      prefixConstraints: BoxConstraints(
                                        minWidth: getSize(
                                          9.00,
                                        ),
                                        minHeight: getSize(
                                          9.00,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        width: double.infinity,
                                        margin: getMargin(
                                          top: 172,
                                        ),
                                        decoration: AppDecoration
                                            .gradientGray8001Gray90096
                                            .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderBL36,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                left: 32,
                                                top: 46,
                                                right: 32,
                                              ),
                                              child: Text(
                                                "msg_emeralda_de_hot".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold24,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 32,
                                                top: 14,
                                                right: 32,
                                              ),
                                              child: Text(
                                                "lbl_paris_france".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRegular16WhiteA700
                                                    .copyWith(
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                width: getHorizontalSize(
                                                  231.00,
                                                ),
                                                margin: getMargin(
                                                  left: 32,
                                                  top: 10,
                                                  right: 32,
                                                  bottom: 24,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 2,
                                                        bottom: 2,
                                                      ),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            "lbl_292".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanBold24,
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
                                                              left: 4,
                                                              top: 8,
                                                              bottom: 1,
                                                            ),
                                                            child: Text(
                                                              "lbl_per_night"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtUrbanistRegular14WhiteA700
                                                                  .copyWith(
                                                                letterSpacing:
                                                                    0.20,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 3,
                                                        bottom: 2,
                                                      ),
                                                      child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgComputer,
                                                        height: getVerticalSize(
                                                          22.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          18.00,
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
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          400.00,
                        ),
                        width: getHorizontalSize(
                          300.00,
                        ),
                        margin: getMargin(
                          left: 24,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    36.00,
                                  ),
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgRectangle3400X300,
                                  height: getVerticalSize(
                                    400.00,
                                  ),
                                  width: getHorizontalSize(
                                    300.00,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomTextFormField(
                                      width: 71,
                                      focusNode: FocusNode(),
                                      controller:
                                          controller.ratingsOneController,
                                      hintText: "lbl_4_8".tr,
                                      margin: getMargin(
                                        left: 23,
                                        right: 23,
                                      ),
                                      variant: TextFormFieldVariant.FillCyan601,
                                      shape: TextFormFieldShape.CircleBorder16,
                                      padding: TextFormFieldPadding.PaddingAll6,
                                      textInputAction: TextInputAction.done,
                                      alignment: Alignment.centerRight,
                                      prefix: Container(
                                        margin: getMargin(
                                          left: 17,
                                          top: 11,
                                          right: 9,
                                          bottom: 11,
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgStarWhiteA700,
                                          height: getVerticalSize(
                                            9.00,
                                          ),
                                          width: getHorizontalSize(
                                            10.00,
                                          ),
                                        ),
                                      ),
                                      prefixConstraints: BoxConstraints(
                                        minWidth: getSize(
                                          9.00,
                                        ),
                                        minHeight: getSize(
                                          9.00,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        width: double.infinity,
                                        margin: getMargin(
                                          top: 172,
                                        ),
                                        decoration: AppDecoration
                                            .gradientGray8001Gray90096
                                            .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderBL36,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                left: 32,
                                                top: 46,
                                                right: 32,
                                              ),
                                              child: Text(
                                                "msg_emeralda_de_hot".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold24,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 32,
                                                top: 14,
                                                right: 32,
                                              ),
                                              child: Text(
                                                "lbl_paris_france".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRegular16WhiteA700
                                                    .copyWith(
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: getHorizontalSize(
                                                231.00,
                                              ),
                                              margin: getMargin(
                                                left: 32,
                                                top: 10,
                                                right: 32,
                                                bottom: 24,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 2,
                                                      bottom: 2,
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                          "lbl_292".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtUrbanistRomanBold24,
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 4,
                                                            top: 8,
                                                            bottom: 1,
                                                          ),
                                                          child: Text(
                                                            "lbl_per_night".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRegular14WhiteA700
                                                                .copyWith(
                                                              letterSpacing:
                                                                  0.20,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 3,
                                                      bottom: 2,
                                                    ),
                                                    child: CommonImageView(
                                                      imagePath: ImageConstant
                                                          .imgComputerWhiteA700,
                                                      height: getVerticalSize(
                                                        22.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        18.00,
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
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: getMargin(
                    top: 30,
                    right: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        16.00,
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 3,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                              ),
                              child: Text(
                                "lbl_recently_booked".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold18,
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
                                style: AppStyle.txtUrbanistRomanBold16Cyan601
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
                          top: 24,
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
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: controller
                                .homeModelObj.value.homeScreenItemList.length,
                            itemBuilder: (context, index) {
                              HomeScreenItemModel model = controller
                                  .homeModelObj.value.homeScreenItemList[index];
                              return HomeScreenItemWidget(
                                model,
                              );
                            },
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
