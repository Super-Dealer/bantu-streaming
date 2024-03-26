import 'package:bantu/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/reset_password_success_controller.dart';

class ResetPasswordSuccessScreen
    extends GetWidget<ResetPasswordSuccessController> {
  const ResetPasswordSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("lbl_congrats".tr,
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 8.v),
                      Container(
                          width: 307.h,
                          margin: EdgeInsets.only(right: 35.h),
                          child: Text("msg_congrats_your_password".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 46.v),
                      CustomElevatedButton(
                          text: "lbl_login".tr,
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          onPressed: () {
                            onTapLogin();
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
