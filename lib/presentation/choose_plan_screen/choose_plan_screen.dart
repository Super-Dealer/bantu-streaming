import 'package:bantu/widgets/app_bar/custom_app_bar.dart';
import 'package:bantu/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'widgets/chooseplanlist_item_widget.dart';
import 'models/chooseplanlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/choose_plan_controller.dart';

class ChoosePlanScreen extends GetWidget<ChoosePlanController> {
  const ChoosePlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 25.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Column(children: [
                          SizedBox(
                              width: 191.h,
                              child: Text("msg_choose_your_favorite".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleMedium!
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 20.v),
                          _buildChoosePlanList()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgClose,
            margin: EdgeInsets.fromLTRB(16.h, 7.v, 324.h, 7.v),
            onTap: () {
              onTapClose();
            }));
  }

  /// Section Widget
  Widget _buildChoosePlanList() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 32.v);
        },
        itemCount: controller
            .choosePlanModelObj.value.chooseplanlistItemList.value.length,
        itemBuilder: (context, index) {
          ChooseplanlistItemModel model = controller
              .choosePlanModelObj.value.chooseplanlistItemList.value[index];
          return ChooseplanlistItemWidget(model);
        }));
  }

  /// Navigates to the previous screen.
  onTapClose() {
    Get.back();
  }
}
