import 'package:bantu/presentation/home_page/home_page.dart';
import 'package:bantu/presentation/search_page/search_page.dart';
import 'package:bantu/presentation/saved_page/saved_page.dart';
import 'package:bantu/presentation/downloaded_page/downloaded_page.dart';
import 'package:bantu/presentation/profile_page/profile_page.dart';
import 'package:bantu/widgets/app_bar/custom_app_bar.dart';
import 'package:bantu/widgets/app_bar/appbar_title_searchview.dart';
import 'package:bantu/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/not_found_controller.dart';

// ignore_for_file: must_be_immutable
class NotFoundScreen extends GetWidget<NotFoundController> {
  const NotFoundScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMaskGroup,
                height: 184.adaptSize,
                width: 184.adaptSize,
              ),
              SizedBox(height: 42.v),
              Text(
                "lbl_opsss".tr,
                style: CustomTextStyles.titleMediumBold,
              ),
              SizedBox(height: 13.v),
              Text(
                "msg_what_you_are_looking".tr,
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
      height: 50.v,
      centerTitle: true,
      title: AppbarTitleSearchview(
        hintText: "msg_search_by_title".tr,
        controller: controller.searchController,
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
