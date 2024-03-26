import 'package:bantu/widgets/app_bar/custom_app_bar.dart';
import 'package:bantu/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:bantu/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:bantu/widgets/custom_elevated_button.dart';
import 'package:readmore/readmore.dart';
import 'package:bantu/presentation/episode_page/episode_page.dart';
import 'package:bantu/presentation/similiar_page/similiar_page.dart';
import 'package:bantu/presentation/about_page/about_page.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/episode_tab_container_controller.dart';

class EpisodeTabContainerScreen
    extends GetWidget<EpisodeTabContainerController> {
  const EpisodeTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildImageStack(),
                  SizedBox(height: 16.v),
                  _buildFrameRow(),
                  SizedBox(height: 24.v),
                  SizedBox(
                      width: 343.h,
                      child: ReadMoreText("msg_aladdin_a_street2".tr,
                          trimLines: 3,
                          colorClickableText: appTheme.whiteA700,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: "lbl_read_more".tr,
                          moreStyle: CustomTextStyles.bodySmallPrimaryContainer
                              .copyWith(height: 1.50),
                          lessStyle: CustomTextStyles.bodySmallPrimaryContainer
                              .copyWith(height: 1.50))),
                  SizedBox(height: 21.v),
                  _buildTabview(),
                  _buildTabBarViewPager()
                ])))));
  }

  /// Section Widget
  Widget _buildImageStack() {
    return SizedBox(
        height: 369.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 369.v,
                  width: 374.h,
                  decoration: BoxDecoration(color: appTheme.black900))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 369.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage6,
                        height: 369.v,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            padding: EdgeInsets.symmetric(vertical: 7.v),
                            decoration: AppDecoration.gradientOnPrimaryToBlack,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomAppBar(
                                      height: 35.v,
                                      leadingWidth: 51.h,
                                      leading: AppbarLeadingIconbutton(
                                          imagePath: ImageConstant.imgArrowLeft,
                                          margin: EdgeInsets.only(left: 16.h),
                                          onTap: () {
                                            onTapArrowLeft();
                                          }),
                                      actions: [
                                        AppbarTrailingIconbutton(
                                            imagePath:
                                                ImageConstant.imgFrame427319010,
                                            margin:
                                                EdgeInsets.only(left: 16.h)),
                                        AppbarTrailingIconbutton(
                                            imagePath: ImageConstant
                                                .imgFrame427319010WhiteA700,
                                            margin: EdgeInsets.only(
                                                left: 10.h, right: 16.h))
                                      ]),
                                  SizedBox(height: 262.v),
                                  Text("msg_disney_s_aladdin".tr,
                                      style: CustomTextStyles
                                          .headlineSmallSemiBold),
                                  SizedBox(height: 1.v),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_2019".tr,
                                            style: CustomTextStyles
                                                .bodySmallPrimaryContainer),
                                        Container(
                                            height: 3.adaptSize,
                                            width: 3.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 8.h,
                                                top: 7.v,
                                                bottom: 8.v),
                                            decoration: BoxDecoration(
                                                color: theme.colorScheme
                                                    .primaryContainer,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        1.h))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.h, top: 1.v),
                                            child: Text(
                                                "msg_adventure_comedy".tr,
                                                style: CustomTextStyles
                                                    .bodySmallPrimaryContainer)),
                                        Container(
                                            height: 3.adaptSize,
                                            width: 3.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 8.h,
                                                top: 7.v,
                                                bottom: 8.v),
                                            decoration: BoxDecoration(
                                                color: theme.colorScheme
                                                    .primaryContainer,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        1.h))),
                                        Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Text("lbl_2h_8m".tr,
                                                style: CustomTextStyles
                                                    .bodySmallPrimaryContainer))
                                      ])
                                ])))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomElevatedButton(
                  height: 37.v,
                  text: "lbl_play".tr,
                  margin: EdgeInsets.only(right: 8.h),
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 8.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgPlay,
                          height: 16.adaptSize,
                          width: 16.adaptSize)),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL18,
                  buttonTextStyle: theme.textTheme.titleSmall!)),
          Expanded(
              child: CustomElevatedButton(
                  height: 37.v,
                  text: "lbl_download".tr,
                  margin: EdgeInsets.only(left: 8.h),
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 8.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgDownload,
                          height: 16.adaptSize,
                          width: 16.adaptSize)),
                  buttonStyle: CustomButtonStyles.fillOnPrimaryContainerTL18,
                  buttonTextStyle: theme.textTheme.titleSmall!))
        ]));
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
        height: 36.v,
        width: 312.h,
        margin: EdgeInsets.only(left: 16.h),
        child: TabBar(
            controller: controller.tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.primary,
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
            unselectedLabelColor:
                theme.colorScheme.primaryContainer.withOpacity(0.67),
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
            indicatorColor: theme.colorScheme.primary,
            tabs: [
              Tab(child: Text("lbl_episode".tr)),
              Tab(child: Text("lbl_similiar".tr)),
              Tab(child: Opacity(opacity: 0.9, child: Text("lbl_about".tr)))
            ]));
  }

  /// Section Widget
  Widget _buildTabBarViewPager() {
    return SizedBox(
        height: 208.v,
        child: TabBarView(
            controller: controller.tabviewController,
            children: [EpisodePage(), SimiliarPage(), AboutPage()]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
