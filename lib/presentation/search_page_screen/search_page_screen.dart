import '../search_page_screen/widgets/search_page_item_widget.dart';
import 'controller/search_page_controller.dart';
import 'models/search_page_item_model.dart';
import 'package:flutter/material.dart';
import 'package:xomfort/core/app_export.dart';
import 'package:xomfort/widgets/custom_bottom_bar.dart';
import 'package:xomfort/widgets/custom_search_view.dart';

class SearchPageScreen extends GetWidget<SearchPageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              margin: getMargin(
                left: 10,
              ),
              decoration: AppDecoration.fillGray900,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomSearchView(
                    width: 380,
                    focusNode: FocusNode(),
                    controller: controller.searchBarController,
                    hintText: "lbl_search".tr,
                    margin: getMargin(
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
                  Padding(
                    padding: getPadding(
                      top: 24,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                            left: 111,
                            top: 2,
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
                  ),
                  Container(
                    margin: getMargin(
                      top: 22,
                      right: 10,
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
                        itemCount: controller
                            .searchPageModelObj.value.searchPageItemList.length,
                        itemBuilder: (context, index) {
                          SearchPageItemModel model = controller
                              .searchPageModelObj
                              .value
                              .searchPageItemList[index];
                          return SearchPageItemWidget(
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
