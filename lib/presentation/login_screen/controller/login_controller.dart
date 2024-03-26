import '../../../core/app_export.dart';
import '../models/login_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginController extends GetxController {
  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailFieldController.dispose();
    passwordFieldController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }
}
