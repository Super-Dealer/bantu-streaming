import 'package:bantu/widgets/custom_text_form_field.dart';
import 'package:bantu/core/utils/validation_functions.dart';
import 'package:bantu/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/reset_password_controller.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
  ResetPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 16.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("lbl_reset_password".tr,
                                      style: theme.textTheme.headlineSmall),
                                  SizedBox(height: 12.v),
                                  Container(
                                      width: 328.h,
                                      margin: EdgeInsets.only(right: 14.h),
                                      child: Text("msg_please_enter_your".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodyMedium!
                                              .copyWith(height: 1.50))),
                                  SizedBox(height: 46.v),
                                  Obx(() => CustomTextFormField(
                                      controller: controller.passwordController,
                                      hintText: "lbl_password".tr,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: InkWell(
                                          onTap: () {
                                            controller.isShowPassword.value =
                                                !controller
                                                    .isShowPassword.value;
                                          },
                                          child: Container(
                                              margin: EdgeInsets.only(
                                                  left: 30.h,
                                                  right: 20.h,
                                                  bottom: 18.v),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEye,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize))),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 42.v),
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidPassword(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_password"
                                              .tr;
                                        }
                                        return null;
                                      },
                                      obscureText:
                                          controller.isShowPassword.value)),
                                  SizedBox(height: 29.v),
                                  Obx(() => CustomTextFormField(
                                      controller:
                                          controller.newpasswordController,
                                      hintText: "msg_confirm_new_password".tr,
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: InkWell(
                                          onTap: () {
                                            controller.isShowPassword1.value =
                                                !controller
                                                    .isShowPassword1.value;
                                          },
                                          child: Container(
                                              margin: EdgeInsets.only(
                                                  left: 30.h,
                                                  right: 20.h,
                                                  bottom: 18.v),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEye,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize))),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 42.v),
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidPassword(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_password"
                                              .tr;
                                        }
                                        return null;
                                      },
                                      obscureText:
                                          controller.isShowPassword1.value)),
                                  SizedBox(height: 31.v),
                                  CustomElevatedButton(
                                      text: "lbl_reset_password2".tr,
                                      buttonStyle:
                                          CustomButtonStyles.fillPrimary,
                                      onPressed: () {
                                        onTapResetPassword();
                                      }),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Navigates to the resetPasswordSuccessScreen when the action is triggered.
  onTapResetPassword() {
    Get.toNamed(
      AppRoutes.resetPasswordSuccessScreen,
    );
  }
}
