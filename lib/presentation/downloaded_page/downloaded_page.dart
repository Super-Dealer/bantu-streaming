import 'package:bantu/widgets/app_bar/custom_app_bar.dart';
import 'package:bantu/widgets/app_bar/appbar_title.dart';
import 'widgets/downloadedlist_item_widget.dart';
import 'models/downloadedlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/downloaded_controller.dart';
import 'models/downloaded_model.dart';

class DownloadedPage extends StatelessWidget {
  DownloadedPage({Key? key})
      : super(
          key: key,
        );

  DownloadedController controller =
      Get.put(DownloadedController(DownloadedModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 25.v,
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
                  height: 18.v,
                );
              },
              itemCount: controller
                  .downloadedModelObj.value.downloadedlistItemList.value.length,
              itemBuilder: (context, index) {
                DownloadedlistItemModel model = controller.downloadedModelObj
                    .value.downloadedlistItemList.value[index];
                return DownloadedlistItemWidget(
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
      height: 48.v,
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_download".tr,
      ),
    );
  }
}
