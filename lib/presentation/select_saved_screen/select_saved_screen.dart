import 'package:bantu/presentation/home_page/home_page.dart';
import 'package:bantu/presentation/search_page/search_page.dart';
import 'package:bantu/presentation/saved_page/saved_page.dart';
import 'package:bantu/presentation/downloaded_page/downloaded_page.dart';
import 'package:bantu/presentation/profile_page/profile_page.dart';
import 'package:bantu/widgets/app_bar/custom_app_bar.dart';
import 'package:bantu/widgets/app_bar/appbar_subtitle.dart';
import 'package:bantu/widgets/app_bar/appbar_title.dart';
import 'package:bantu/widgets/app_bar/appbar_subtitle_one.dart';
import 'widgets/selectsavedlist_item_widget.dart';
import 'models/selectsavedlist_item_model.dart';
import 'package:bantu/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/select_saved_controller.dart';

// ignore_for_file: must_be_immutable
class SelectSavedScreen extends GetWidget<SelectSavedController> {
  const SelectSavedScreen({Key? key})
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
            children: [
              SizedBox(height: 24.v),
              _buildSelectSavedList(),
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
  Widget _buildSelectSavedList() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 1.v,
              );
            },
            itemCount: controller
                .selectSavedModelObj.value.selectsavedlistItemList.value.length,
            itemBuilder: (context, index) {
              SelectsavedlistItemModel model = controller.selectSavedModelObj
                  .value.selectsavedlistItemList.value[index];
              return SelectsavedlistItemWidget(
                model,
              );
            },
          ),
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
