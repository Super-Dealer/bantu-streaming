import '../models/savedlist_item_model.dart';
import '../controller/saved_controller.dart';
import 'package:bantu/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';

// ignore: must_be_immutable
class SavedlistItemWidget extends StatelessWidget {
  SavedlistItemWidget(
    this.savedlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SavedlistItemModel savedlistItemModelObj;

  var controller = Get.find<SavedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.v),
      decoration: AppDecoration.chipColor.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: savedlistItemModelObj.image!.value,
              height: 112.adaptSize,
              width: 112.adaptSize,
              radius: BorderRadius.circular(
                15.h,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 146.h,
                        child: Obx(
                          () => Text(
                            savedlistItemModelObj.theIceAgeAdventures!.value,
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
                          savedlistItemModelObj.actionAdventure!.value,
                          style: CustomTextStyles.bodySmallPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgNotification,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      left: 30.h,
                      bottom: 35.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 22.v),
              _buildWatchNow1(),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWatchNow1() {
    return CustomElevatedButton(
      height: 30.v,
      width: 120.h,
      text: "lbl_watch_now".tr,
      buttonTextStyle: theme.textTheme.bodySmall!,
    );
  }
}
