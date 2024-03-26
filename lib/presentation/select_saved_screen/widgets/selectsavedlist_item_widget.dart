import '../models/selectsavedlist_item_model.dart';
import '../controller/select_saved_controller.dart';
import 'package:bantu/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';

// ignore: must_be_immutable
class SelectsavedlistItemWidget extends StatelessWidget {
  SelectsavedlistItemWidget(
    this.selectsavedlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SelectsavedlistItemModel selectsavedlistItemModelObj;

  var controller = Get.find<SelectSavedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.chipColor.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: selectsavedlistItemModelObj.image!.value,
              height: 112.adaptSize,
              width: 112.adaptSize,
              radius: BorderRadius.circular(
                15.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 146.h,
                  child: Obx(
                    () => Text(
                      selectsavedlistItemModelObj.theIceAgeAdventures!.value,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelLarge!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 4.v),
                Obx(
                  () => Text(
                    selectsavedlistItemModelObj.actionAdventure!.value,
                    style: CustomTextStyles.bodySmallPrimaryContainer,
                  ),
                ),
                SizedBox(height: 22.v),
                _buildWatchNowButton1(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWatchNowButton1() {
    return CustomElevatedButton(
      height: 30.v,
      width: 120.h,
      text: "lbl_watch_now".tr,
      buttonTextStyle: theme.textTheme.bodySmall!,
    );
  }
}
