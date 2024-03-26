import 'package:bantu/widgets/app_bar/custom_app_bar.dart';
import 'package:bantu/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:bantu/widgets/app_bar/appbar_title.dart';
import 'widgets/history_item_widget.dart';
import 'models/history_item_model.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/history_controller.dart';

class HistoryScreen extends GetWidget<HistoryController> {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 25.v, right: 16.h),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 16.v);
                    },
                    itemCount: controller
                        .historyModelObj.value.historyItemList.value.length,
                    itemBuilder: (context, index) {
                      HistoryItemModel model = controller
                          .historyModelObj.value.historyItemList.value[index];
                      return HistoryItemWidget(model);
                    })))));
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
        title: AppbarTitle(text: "lbl_history".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
