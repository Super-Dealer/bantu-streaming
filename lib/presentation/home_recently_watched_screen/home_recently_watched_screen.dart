import 'package:bantu/presentation/home_page/home_page.dart';
import 'package:bantu/presentation/search_page/search_page.dart';
import 'package:bantu/presentation/saved_page/saved_page.dart';
import 'package:bantu/presentation/downloaded_page/downloaded_page.dart';
import 'package:bantu/presentation/profile_page/profile_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/widget1_item_widget.dart';
import 'models/widget1_item_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'widgets/avengersendlist_item_widget.dart';
import 'models/avengersendlist_item_model.dart';
import 'widgets/aladdinlist1_item_widget.dart';
import 'models/aladdinlist1_item_model.dart';
import 'package:bantu/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/home_recently_watched_controller.dart';

// ignore_for_file: must_be_immutable
class HomeRecentlyWatchedScreen
    extends GetWidget<HomeRecentlyWatchedController> {
  const HomeRecentlyWatchedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildSliderWidget(),
                SizedBox(height: 24.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_last_watched".tr,
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                  ),
                ),
                SizedBox(height: 15.v),
                _buildAvengersEndList(),
                SizedBox(height: 25.v),
                _buildCategoriesHorizontalScroll(),
                SizedBox(height: 26.v),
                _buildMostPopularRow(),
                SizedBox(height: 9.v),
                _buildAladdinList(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildSliderWidget() {
    return SizedBox(
      height: 296.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Obx(
            () => CarouselSlider.builder(
              options: CarouselOptions(
                height: 296.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (
                  index,
                  reason,
                ) {
                  controller.sliderIndex.value = index;
                },
              ),
              itemCount: controller.homeRecentlyWatchedModelObj.value
                  .widget1ItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                Widget1ItemModel model = controller.homeRecentlyWatchedModelObj
                    .value.widget1ItemList.value[index];
                return Widget1ItemWidget(
                  model,
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Obx(
              () => SizedBox(
                height: 296.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: controller.sliderIndex.value,
                  count: controller.homeRecentlyWatchedModelObj.value
                      .widget1ItemList.value.length,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 7.05,
                    activeDotColor: theme.colorScheme.primary,
                    dotColor: appTheme.gray3008d,
                    dotHeight: 5.v,
                    dotWidth: 4.h,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAvengersEndList() {
    return SizedBox(
      height: 166.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 16.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount: controller.homeRecentlyWatchedModelObj.value
              .avengersendlistItemList.value.length,
          itemBuilder: (context, index) {
            AvengersendlistItemModel model = controller
                .homeRecentlyWatchedModelObj
                .value
                .avengersendlistItemList
                .value[index];
            return AvengersendlistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoriesColumn() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_catagories".tr,
            style: CustomTextStyles.titleMediumSemiBold,
          ),
          SizedBox(height: 10.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 82.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.style.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder17,
                ),
                child: Text(
                  "lbl_all".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Container(
                width: 82.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 21.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.chipColor.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder17,
                ),
                child: Text(
                  "lbl_action".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Container(
                width: 82.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.chipColor.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder17,
                ),
                child: Text(
                  "lbl_comedy".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Container(
                width: 82.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.chipColor.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder17,
                ),
                child: Text(
                  "lbl_romance".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoriesHorizontalScroll() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 16.h),
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCategoriesColumn(),
            Container(
              width: 82.h,
              margin: EdgeInsets.only(
                left: 8.h,
                top: 34.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.chipColor.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder17,
              ),
              child: Text(
                "lbl_horor".tr,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMostPopularRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_most_popular".tr,
            style: CustomTextStyles.titleMediumSemiBold,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Text(
              "lbl_see_all".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAladdinList() {
    return SizedBox(
      height: 178.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 16.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount: controller.homeRecentlyWatchedModelObj.value
              .aladdinlist1ItemList.value.length,
          itemBuilder: (context, index) {
            Aladdinlist1ItemModel model = controller.homeRecentlyWatchedModelObj
                .value.aladdinlist1ItemList.value[index];
            return Aladdinlist1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Search:
        return AppRoutes.searchPage;
      case BottomBarEnum.Saved:
        return AppRoutes.savedPage;
      case BottomBarEnum.Downloads:
        return AppRoutes.downloadedPage;
      case BottomBarEnum.Me:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.searchPage:
        return SearchPage();
      case AppRoutes.savedPage:
        return SavedPage();
      case AppRoutes.downloadedPage:
        return DownloadedPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
