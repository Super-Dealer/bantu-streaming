import 'package:bantu/core/utils/validation_functions.dart';
import 'package:bantu/widgets/custom_text_form_field.dart';
import 'package:bantu/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/sign_up_controller.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 47.v),
                            child: Column(children: [
                              Text("lbl_sign_up".tr,
                                  style: theme.textTheme.headlineSmall),
                              SizedBox(height: 45.v),
                              _buildFullName(),
                              SizedBox(height: 28.v),
                              _buildEmail(),
                              SizedBox(height: 29.v),
                              _buildPassword(),
                              SizedBox(height: 31.v),
                              _buildSignUpButton(),
                              SizedBox(height: 32.v),
                              _buildFrameRow1(),
                              SizedBox(height: 31.v),
                              _buildFrameRow2(),
                              SizedBox(height: 49.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 36.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("msg_do_you_already_have".tr,
                                            style: CustomTextStyles
                                                .bodySmallPrimaryContainer),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtLoginNow();
                                            },
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 4.h),
                                                child: Text("lbl_login_now".tr,
                                                    style: theme
                                                        .textTheme.labelLarge)))
                                      ])),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildFullName() {
    return CustomTextFormField(
        controller: controller.fullNameController,
        hintText: "lbl_full_name".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_email_address".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildPassword() {
    return Obx(() => CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.only(left: 30.h, right: 20.h, bottom: 18.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgEye,
                    height: 24.adaptSize,
                    width: 24.adaptSize))),
        suffixConstraints: BoxConstraints(maxHeight: 42.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword.value));
  }

  /// Section Widget
  Widget _buildSignUpButton() {
    return CustomElevatedButton(
        text: "lbl_sign_up".tr,
        buttonStyle: CustomButtonStyles.fillPrimary,
        onPressed: () {
          onTapSignUpButton();
        });
  }

  /// Section Widget
  Widget _buildFrameRow1() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 8.v, bottom: 9.v),
                  child: SizedBox(width: 132.h, child: Divider())),
              Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text("lbl_or".tr,
                      style: CustomTextStyles.bodySmallPrimaryContainer)),
              Padding(
                  padding: EdgeInsets.only(top: 8.v, bottom: 9.v),
                  child: SizedBox(width: 146.h, child: Divider(indent: 14.h)))
            ]));
  }

  /// Section Widget
  Widget _buildGoogleButton() {
    return Expanded(
        child: CustomElevatedButton(
            text: "lbl_google".tr,
            margin: EdgeInsets.only(right: 8.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 12.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgGoogle3,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
            buttonTextStyle: theme.textTheme.bodySmall!));
  }

  /// Section Widget
  Widget _buildFacebookButton() {
    return Expanded(
        child: CustomElevatedButton(
            text: "lbl_facebook".tr,
            margin: EdgeInsets.only(left: 8.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 12.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgFacebook12,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
            buttonTextStyle: theme.textTheme.bodySmall!));
  }

  /// Section Widget
  Widget _buildFrameRow2() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildGoogleButton(), _buildFacebookButton()]);
  }

  onTapSignUpButton() {
    // TODO: implement Actions
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLoginNow() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
