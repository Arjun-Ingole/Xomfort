import '../carousel_one_screen/widgets/slidertravelsafely_item_widget.dart';
import 'controller/carousel_one_controller.dart';
import 'models/slidertravelsafely_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:xomfort/core/app_export.dart';

class CarouselOneScreen extends GetWidget<CarouselOneController> {
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: CommonImageView(
                    imagePath: ImageConstant.imgRectangle1,
                    height: getVerticalSize(
                      420.00,
                    ),
                    width: getHorizontalSize(
                      428.00,
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    366.00,
                  ),
                  width: getHorizontalSize(
                    380.00,
                  ),
                  margin: getMargin(
                    left: 24,
                    top: 48,
                    right: 24,
                    bottom: 20,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Obx(
                        () => CarouselSlider.builder(
                          options: CarouselOptions(
                            height: getVerticalSize(
                              366.00,
                            ),
                            initialPage: 0,
                            autoPlay: true,
                            viewportFraction: 1.0,
                            enableInfiniteScroll: false,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index, reason) {
                              controller.silderIndex.value = index;
                            },
                          ),
                          itemCount: controller.carouselOneModelObj.value
                              .slidertravelsafelyItemList.length,
                          itemBuilder: (context, index, realIndex) {
                            SlidertravelsafelyItemModel model = controller
                                .carouselOneModelObj
                                .value
                                .slidertravelsafelyItemList[index];
                            return SlidertravelsafelyItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Obx(
                          () => Container(
                            height: getVerticalSize(
                              8.00,
                            ),
                            margin: getMargin(
                              left: 160,
                              top: 162,
                              right: 160,
                              bottom: 162,
                            ),
                            child: AnimatedSmoothIndicator(
                              activeIndex: controller.silderIndex.value,
                              count: controller.carouselOneModelObj.value
                                  .slidertravelsafelyItemList.length,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                spacing: 6,
                                activeDotColor: ColorConstant.cyan600,
                                dotColor: ColorConstant.gray800,
                                dotHeight: getVerticalSize(
                                  8.00,
                                ),
                                dotWidth: getHorizontalSize(
                                  8.00,
                                ),
                              ),
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
      ),
    );
  }
}
