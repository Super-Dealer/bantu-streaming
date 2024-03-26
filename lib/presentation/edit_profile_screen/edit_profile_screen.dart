import 'package:bantu/widgets/app_bar/custom_app_bar.dart';
import 'package:bantu/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:bantu/widgets/app_bar/appbar_title.dart';
import 'package:bantu/widgets/custom_icon_button.dart';
import 'package:bantu/widgets/custom_text_form_field.dart';
import 'package:bantu/core/utils/validation_functions.dart';
import 'package:bantu/widgets/custom_drop_down.dart';
import 'package:bantu/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/edit_profile_controller.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {
  EditProfileScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
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
                                horizontal: 16.h, vertical: 23.v),
                            child: Column(children: [
                              SizedBox(
                                  height: 84.adaptSize,
                                  width: 84.adaptSize,
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse414,
                                            height: 84.adaptSize,
                                            width: 84.adaptSize,
                                            radius: BorderRadius.circular(42.h),
                                            alignment: Alignment.center),
                                        CustomIconButton(
                                            height: 30.adaptSize,
                                            width: 30.adaptSize,
                                            padding: EdgeInsets.all(4.h),
                                            decoration: IconButtonStyleHelper
                                                .fillPrimaryTL15,
                                            alignment: Alignment.bottomRight,
                                            onTap: () {
                                              onTapBtnCamera();
                                            },
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgCamera))
                                      ])),
                              SizedBox(height: 40.v),
                              _buildInputFields1(),
                              SizedBox(height: 23.v),
                              _buildInputFields2(),
                              SizedBox(height: 23.v),
                              _buildInputFields3(),
                              SizedBox(height: 23.v),
                              _buildInputFields4(),
                              SizedBox(height: 23.v),
                              _buildInputFields5(),
                              SizedBox(height: 23.v),
                              _buildInputFields6()
                            ]))))),
            bottomNavigationBar: _buildSaveButton()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 51.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_edit_profile".tr));
  }

  /// Section Widget
  Widget _buildName() {
    return CustomTextFormField(
        controller: controller.nameController,
        hintText: "lbl_antonio_renders".tr);
  }

  /// Section Widget
  Widget _buildInputFields1() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_name".tr, style: theme.textTheme.labelMedium),
      SizedBox(height: 9.v),
      _buildName()
    ]);
  }

  /// Section Widget
  Widget _buildUserName() {
    return CustomTextFormField(
        controller: controller.userNameController,
        hintText: "msg_renders_antonio".tr);
  }

  /// Section Widget
  Widget _buildInputFields2() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_username".tr, style: theme.textTheme.labelMedium),
      SizedBox(height: 10.v),
      _buildUserName()
    ]);
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_xyz_gmail_com2".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildInputFields3() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email_address".tr, style: theme.textTheme.labelMedium),
      SizedBox(height: 11.v),
      _buildEmail()
    ]);
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return CustomTextFormField(
        controller: controller.phoneNumberController,
        hintText: "lbl_123_4567_8901".tr,
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildInputFields4() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_phone_number".tr, style: theme.textTheme.labelMedium),
      SizedBox(height: 9.v),
      _buildPhoneNumber()
    ]);
  }

  /// Section Widget
  Widget _buildInputFields5() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_date_of_birth".tr, style: theme.textTheme.labelMedium),
      SizedBox(height: 11.v),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: EdgeInsets.only(bottom: 9.v),
            child: Text("msg_30_february_2022".tr,
                style: theme.textTheme.titleSmall)),
        Expanded(
            child: Padding(
                padding: EdgeInsets.only(top: 29.v),
                child: Divider(color: theme.colorScheme.primaryContainer))),
        CustomImageView(
            imagePath: ImageConstant.imgThumbsUpWhiteA700,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(bottom: 12.v))
      ])
    ]);
  }

  /// Section Widget
  Widget _buildInputFields6() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_gender".tr, style: theme.textTheme.labelMedium),
      SizedBox(height: 9.v),
      CustomDropDown(
          icon: Container(
              margin: EdgeInsets.fromLTRB(30.h, 2.v, 20.h, 12.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgArrowdown,
                  height: 18.adaptSize,
                  width: 18.adaptSize)),
          hintText: "lbl_male".tr,
          items: controller.editProfileModelObj.value.dropdownItemList!.value)
    ]);
  }

  /// Section Widget
  Widget _buildSaveButton() {
    return CustomElevatedButton(
        text: "lbl_save".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 40.v),
        buttonStyle: CustomButtonStyles.fillPrimary);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  onTapBtnCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
