import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/widget_item_widget.dart';
import 'models/widget_item_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'widgets/categorieslist_item_widget.dart';
import 'models/categorieslist_item_model.dart';
import 'widgets/frame_item_widget.dart';
import 'models/frame_item_model.dart';
import 'widgets/aladdinlist_item_widget.dart';
import 'models/aladdinlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.bg,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildSliderWidget(),
                  SizedBox(height: 25.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_catagories".tr,
                              style: CustomTextStyles.titleMediumSemiBold))),
                  SizedBox(height: 10.v),
                  _buildCategoriesList(),
                  SizedBox(height: 26.v),
                  _buildMostPopularColumn(),
                  SizedBox(height: 18.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildLatestMoviesRow(
                          latestMoviesText: "lbl_latest_movies".tr,
                          seeAllText: "lbl_see_all".tr)),
                  SizedBox(height: 7.v),
                  _buildAladdinList()
                ])))));
  }

  /// Section Widget
  Widget _buildSliderWidget() {
    return SizedBox(
        height: 297.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Obx(() => CarouselSlider.builder(
              options: CarouselOptions(
                  height: 297.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    controller.sliderIndex.value = index;
                  }),
              itemCount:
                  controller.homeModelObj.value.widgetItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                WidgetItemModel model =
                    controller.homeModelObj.value.widgetItemList.value[index];
                return WidgetItemWidget(model);
              })),
          Align(
              alignment: Alignment.center,
              child: Obx(() => SizedBox(
                  height: 297.v,
                  child: AnimatedSmoothIndicator(
                      activeIndex: controller.sliderIndex.value,
                      count: controller
                          .homeModelObj.value.widgetItemList.value.length,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                          spacing: 7.05,
                          activeDotColor: theme.colorScheme.primary,
                          dotColor: appTheme.gray3008d,
                          dotHeight: 5.v,
                          dotWidth: 4.h)))))
        ]));
  }

  /// Section Widget
  Widget _buildCategoriesList() {
    return SizedBox(
        height: 34.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 8.h);
            },
            itemCount: controller
                .homeModelObj.value.categorieslistItemList.value.length,
            itemBuilder: (context, index) {
              CategorieslistItemModel model = controller
                  .homeModelObj.value.categorieslistItemList.value[index];
              return CategorieslistItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildMostPopularColumn() {
    return Column(children: [
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: _buildLatestMoviesRow(
              latestMoviesText: "lbl_most_popular".tr,
              seeAllText: "lbl_see_all".tr)),
      SizedBox(height: 9.v),
      SizedBox(
          height: 178.v,
          child: Obx(() => ListView.separated(
              padding: EdgeInsets.only(left: 16.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount:
                  controller.homeModelObj.value.frameItemList.value.length,
              itemBuilder: (context, index) {
                FrameItemModel model =
                    controller.homeModelObj.value.frameItemList.value[index];
                return FrameItemWidget(model);
              })))
    ]);
  }

  /// Section Widget
  Widget _buildAladdinList() {
    return SizedBox(
        height: 178.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount:
                controller.homeModelObj.value.aladdinlistItemList.value.length,
            itemBuilder: (context, index) {
              AladdinlistItemModel model = controller
                  .homeModelObj.value.aladdinlistItemList.value[index];
              return AladdinlistItemWidget(model);
            })));
  }

  /// Common widget
  Widget _buildLatestMoviesRow({
    required String latestMoviesText,
    required String seeAllText,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(latestMoviesText,
              style: CustomTextStyles.titleMediumSemiBold
                  .copyWith(color: appTheme.whiteA700)),
          Padding(
              padding: EdgeInsets.only(bottom: 4.v),
              child: Text(seeAllText,
                  style: theme.textTheme.bodySmall!
                      .copyWith(color: appTheme.whiteA700)))
        ]);
  }
}
