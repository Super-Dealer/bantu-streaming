import 'package:bantu/widgets/custom_pin_code_text_field.dart';
import 'package:bantu/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/otp_verification_controller.dart';

class OtpVerificationScreen extends GetWidget<OtpVerificationController> {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("msg_otp_verification".tr,
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 11.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_6_digit_code_has2".tr,
                                style: CustomTextStyles.bodyMediumffcbc9d8),
                            TextSpan(
                                text: "lbl_xyz_gmail_com".tr,
                                style: CustomTextStyles.titleSmallffcbc9d8)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 47.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h, right: 19.h),
                          child: Obx(() => CustomPinCodeTextField(
                              context: Get.context!,
                              controller: controller.otpController.value,
                              onChanged: (value) {}))),
                      SizedBox(height: 32.v),
                      CustomElevatedButton(
                          text: "lbl_verify".tr,
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          onPressed: () {
                            onTapVerify();
                          }),
                      SizedBox(height: 47.v),
                      Align(
                          alignment: Alignment.center,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("msg_didn_t_receive_the".tr,
                                    style: CustomTextStyles
                                        .bodySmallPrimaryContainer),
                                Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text("lbl_resend".tr,
                                        style: theme.textTheme.labelLarge))
                              ])),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the resetPasswordScreen when the action is triggered.
  onTapVerify() {
    Get.toNamed(
      AppRoutes.resetPasswordScreen,
    );
  }
}
