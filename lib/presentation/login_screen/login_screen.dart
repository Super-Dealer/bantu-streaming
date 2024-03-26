import 'package:bantu/core/utils/validation_functions.dart';
import 'package:bantu/widgets/custom_text_form_field.dart';
import 'package:bantu/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/login_controller.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

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
                              Text("lbl_login".tr,
                                  style: theme.textTheme.headlineSmall),
                              SizedBox(height: 45.v),
                              _buildEmailField(),
                              SizedBox(height: 29.v),
                              _buildPasswordField(),
                              SizedBox(height: 24.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtForgotPassword();
                                      },
                                      child: Text("msg_forgot_password".tr,
                                          style: CustomTextStyles
                                              .titleSmallPrimaryContainer))),
                              SizedBox(height: 22.v),
                              _buildLoginButton(),
                              SizedBox(height: 32.v),
                              _buildFrameRow(),
                              SizedBox(height: 31.v),
                              _buildFrameTenRow(),
                              SizedBox(height: 49.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 29.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("msg_do_you_already_have".tr,
                                            style: CustomTextStyles
                                                .bodySmallPrimaryContainer),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSignUpNow();
                                            },
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 4.h),
                                                child: Text(
                                                    "lbl_sign_up_now".tr,
                                                    style: theme
                                                        .textTheme.labelLarge)))
                                      ])),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildEmailField() {
    return CustomTextFormField(
        controller: controller.emailFieldController,
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
  Widget _buildPasswordField() {
    return Obx(() => CustomTextFormField(
        controller: controller.passwordFieldController,
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
  Widget _buildLoginButton() {
    return CustomElevatedButton(
        text: "lbl_login".tr,
        buttonStyle: CustomButtonStyles.fillPrimary,
        onPressed: () {
          onTapLoginButton();
        });
  }

  /// Section Widget
  Widget _buildFrameRow() {
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
  Widget _buildFrameTenRow() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildGoogleButton(), _buildFacebookButton()]);
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPassword() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  onTapLoginButton() {
    // TODO: implement Actions
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtSignUpNow() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
