import 'package:bantu/presentation/home_page/home_page.dart';
import 'package:bantu/presentation/search_page/search_page.dart';
import 'package:bantu/presentation/saved_page/saved_page.dart';
import 'package:bantu/presentation/downloaded_page/downloaded_page.dart';
import 'package:bantu/presentation/profile_page/profile_page.dart';
import 'package:bantu/widgets/app_bar/custom_app_bar.dart';
import 'package:bantu/widgets/app_bar/appbar_subtitle.dart';
import 'package:bantu/widgets/app_bar/appbar_title.dart';
import 'package:bantu/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:bantu/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/saved_empty_controller.dart';

// ignore_for_file: must_be_immutable
class SavedEmptyScreen extends GetWidget<SavedEmptyController> {
  const SavedEmptyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 58.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: appTheme.gray400,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder92,
                ),
                child: Container(
                  height: 184.adaptSize,
                  width: 184.adaptSize,
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder92,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Opacity(
                        opacity: 0.4,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgVector115,
                          height: 153.v,
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 99.v,
                          width: 100.h,
                          margin: EdgeInsets.only(right: 34.h),
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 99.v,
                                  width: 100.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.yellow700,
                                    borderRadius: BorderRadius.circular(
                                      10.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  height: 99.v,
                                  width: 88.h,
                                  child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 99.v,
                                          width: 50.h,
                                          decoration: BoxDecoration(
                                            color: appTheme.orange400,
                                            borderRadius:
                                                BorderRadius.horizontal(
                                              right: Radius.circular(10.h),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 19.v),
                                          child: Container(
                                            height: 5.v,
                                            width: 76.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.amberA700,
                                            ),
                                            child: ClipRRect(
                                              child: LinearProgressIndicator(
                                                value: 0.5,
                                                backgroundColor:
                                                    appTheme.amberA700,
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  appTheme.amber800,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 33.v),
                                          child: Container(
                                            height: 5.v,
                                            width: 76.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.amberA700,
                                            ),
                                            child: ClipRRect(
                                              child: LinearProgressIndicator(
                                                value: 0.5,
                                                backgroundColor:
                                                    appTheme.amberA700,
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  appTheme.amber800,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          height: 15.v,
                                          width: 31.h,
                                          margin: EdgeInsets.only(top: 28.v),
                                          decoration: BoxDecoration(
                                            color: appTheme.amberA700,
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
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup427318792,
                        height: 119.v,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 22.h),
                      ),
                      Opacity(
                        opacity: 0.12,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgRectangle12115,
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            left: 28.h,
                            top: 53.v,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.12,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgRectangle12119,
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(
                            top: 14.v,
                            right: 49.h,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.12,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgRectangle12118,
                          height: 25.adaptSize,
                          width: 25.adaptSize,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(
                            left: 75.h,
                            bottom: 72.v,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.12,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgRectangle12119,
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(
                            left: 20.h,
                            bottom: 37.v,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              Text(
                "lbl_not_save".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 8.v),
              Text(
                "msg_let_s_find_and_download".tr,
                style: CustomTextStyles.bodySmallPrimaryContainer,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(
          children: [
            AppbarSubtitle(
              text: "lbl_mark_all".tr,
              margin: EdgeInsets.symmetric(vertical: 4.v),
            ),
            AppbarTitle(
              text: "lbl_saved".tr,
              margin: EdgeInsets.only(left: 100.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarSubtitleOne(
          text: "lbl_delete".tr,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 15.v,
          ),
        ),
      ],
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
