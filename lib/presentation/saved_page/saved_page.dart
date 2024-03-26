import 'package:bantu/widgets/app_bar/custom_app_bar.dart';
import 'package:bantu/widgets/app_bar/appbar_title.dart';
import 'package:bantu/widgets/app_bar/appbar_subtitle_one.dart';
import 'widgets/savedlist_item_widget.dart';
import 'models/savedlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/saved_controller.dart';
import 'models/saved_model.dart';

class SavedPage extends StatelessWidget {
  SavedPage({Key? key})
      : super(
          key: key,
        );

  SavedController controller = Get.put(SavedController(SavedModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 24.v,
            right: 16.h,
          ),
          child: Obx(
            () => ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 16.v,
                );
              },
              itemCount:
                  controller.savedModelObj.value.savedlistItemList.value.length,
              itemBuilder: (context, index) {
                SavedlistItemModel model = controller
                    .savedModelObj.value.savedlistItemList.value[index];
                return SavedlistItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_saved".tr,
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
}
