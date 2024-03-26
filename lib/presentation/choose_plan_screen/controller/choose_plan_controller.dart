import '../../../core/app_export.dart';
import '../models/choose_plan_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChoosePlanScreen.
///
/// This class manages the state of the ChoosePlanScreen, including the
/// current choosePlanModelObj
class ChoosePlanController extends GetxController {
  TextEditingController inputsFieldController = TextEditingController();

  Rx<ChoosePlanModel> choosePlanModelObj = ChoosePlanModel().obs;

  @override
  void onClose() {
    super.onClose();
    inputsFieldController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.paymentMethodScreen,
    );
  }
}
