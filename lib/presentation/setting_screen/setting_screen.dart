import 'package:bantu/widgets/app_bar/custom_app_bar.dart';
import 'package:bantu/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:bantu/widgets/app_bar/appbar_title.dart';
import 'package:bantu/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/setting_controller.dart';

class SettingScreen extends GetWidget<SettingController> {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v),
                child: Column(children: [
                  _buildLanguageFrame(),
                  SizedBox(height: 16.v),
                  _buildNotificationFrame(),
                  SizedBox(height: 16.v),
                  _buildDownloadFrame(),
                  SizedBox(height: 16.v),
                  _buildSettingsFrame(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 51.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_setting".tr));
  }

  /// Section Widget
  Widget _buildLanguageFrame() {
    return GestureDetector(
        onTap: () {
          onTapLanguageFrame();
        },
        child: Container(
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.chipColor
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder17),
            child: Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgGlobe,
                  height: 40.adaptSize,
                  width: 40.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 15.h, top: 2.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_language".tr,
                            style: theme.textTheme.labelLarge),
                        SizedBox(height: 3.v),
                        Text("lbl_english".tr,
                            style: CustomTextStyles.labelMediumWhiteA700)
                      ]))
            ])));
  }

  /// Section Widget
  Widget _buildNotificationFrame() {
    return Container(
        padding: EdgeInsets.all(10.h),
        decoration: AppDecoration.chipColor
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder17),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgFrame427319100,
              height: 40.adaptSize,
              width: 40.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 15.h, top: 10.v, bottom: 11.v),
              child: Text("lbl_notifiction".tr,
                  style: theme.textTheme.labelLarge)),
          Spacer(),
          Obx(() => CustomSwitch(
              margin: EdgeInsets.symmetric(vertical: 10.v),
              value: controller.isSelectedSwitch.value,
              onChange: (value) {
                controller.isSelectedSwitch.value = value;
              }))
        ]));
  }

  /// Section Widget
  Widget _buildDownloadFrame() {
    return Container(
        padding: EdgeInsets.all(10.h),
        decoration: AppDecoration.chipColor
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder17),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgCloseBlueGray800,
              height: 40.adaptSize,
              width: 40.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 15.h, top: 12.v, bottom: 9.v),
              child: Text("msg_download_in_high".tr,
                  style: theme.textTheme.labelLarge)),
          Spacer(),
          Obx(() => CustomSwitch(
              margin: EdgeInsets.symmetric(vertical: 10.v),
              value: controller.isSelectedSwitch1.value,
              onChange: (value) {
                controller.isSelectedSwitch1.value = value;
              }))
        ]));
  }

  /// Section Widget
  Widget _buildSettingsFrame() {
    return Container(
        padding: EdgeInsets.all(10.h),
        decoration: AppDecoration.chipColor
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder17),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 40.adaptSize,
              width: 40.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 15.h, top: 12.v, bottom: 9.v),
              child: Text("msg_download_using_only".tr,
                  style: theme.textTheme.labelLarge)),
          Spacer(),
          Obx(() => CustomSwitch(
              margin: EdgeInsets.symmetric(vertical: 10.v),
              value: controller.isSelectedSwitch2.value,
              onChange: (value) {
                controller.isSelectedSwitch2.value = value;
              }))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the languageScreen when the action is triggered.
  onTapLanguageFrame() {
    Get.toNamed(
      AppRoutes.languageScreen,
    );
  }
}
