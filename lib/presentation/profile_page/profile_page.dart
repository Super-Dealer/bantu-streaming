import 'package:bantu/widgets/app_bar/custom_app_bar.dart';
import 'package:bantu/widgets/app_bar/appbar_title.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/profile_controller.dart';
import 'models/profile_model.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 9.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse414,
                      height: 84.adaptSize,
                      width: 84.adaptSize,
                      radius: BorderRadius.circular(42.h)),
                  SizedBox(height: 15.v),
                  Text("lbl_antonio_renders".tr,
                      style: CustomTextStyles.titleMediumSemiBold),
                  SizedBox(height: 3.v),
                  Text("msg_renders_antonio".tr,
                      style: CustomTextStyles.labelLargePrimaryContainer),
                  SizedBox(height: 22.v),
                  _buildFrameRow1(),
                  SizedBox(height: 14.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      child: _buildFrameRow2(
                          userImage: ImageConstant.imgFrame427319082,
                          history: "lbl_notification".tr,
                          onTapFrameRow2: () {
                            onTapFrameRow2();
                          })),
                  SizedBox(height: 24.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      child: _buildFrameRow2(
                          userImage: ImageConstant.imgUser,
                          history: "lbl_history".tr,
                          onTapFrameRow2: () {
                            onTapFrameRow3();
                          })),
                  SizedBox(height: 24.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      child: _buildFrameRow2(
                          userImage: ImageConstant.imgThumbsUp,
                          history: "lbl_my_subscription".tr)),
                  SizedBox(height: 24.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      child: _buildFrameRow2(
                          userImage: ImageConstant.imgSearch,
                          history: "lbl_setting".tr,
                          onTapFrameRow2: () {
                            onTapFrameRow4();
                          })),
                  SizedBox(height: 24.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      child: _buildFrameRow2(
                          userImage: ImageConstant.imgForward,
                          history: "lbl_logout".tr)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 52.v,
        centerTitle: true,
        title: AppbarTitle(text: "lbl_my_profile".tr));
  }

  /// Section Widget
  Widget _buildFrameRow1() {
    return GestureDetector(
        onTap: () {
          onTapFrameRow1();
        },
        child: Container(
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.chipColor
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder17),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgLock,
                  height: 40.adaptSize,
                  width: 40.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 15.h, top: 11.v, bottom: 10.v),
                  child: Text("lbl_my_profile".tr,
                      style: theme.textTheme.labelLarge)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 12.v))
            ])));
  }

  /// Common widget
  Widget _buildFrameRow2({
    required String userImage,
    required String history,
    Function? onTapFrameRow2,
  }) {
    return GestureDetector(
        onTap: () {
          onTapFrameRow2?.call();
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: userImage, height: 40.adaptSize, width: 40.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 15.h, top: 11.v, bottom: 10.v),
              child: Text(history,
                  style: theme.textTheme.labelLarge!
                      .copyWith(color: appTheme.whiteA700))),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(top: 12.v, bottom: 10.v))
        ]));
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  onTapFrameRow1() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }

  /// Navigates to the notificationScreen when the action is triggered.
  onTapFrameRow2() {
    Get.toNamed(
      AppRoutes.notificationScreen,
    );
  }

  /// Navigates to the historyScreen when the action is triggered.
  onTapFrameRow3() {
    Get.toNamed(
      AppRoutes.historyScreen,
    );
  }

  /// Navigates to the settingScreen when the action is triggered.
  onTapFrameRow4() {
    Get.toNamed(
      AppRoutes.settingScreen,
    );
  }
}
