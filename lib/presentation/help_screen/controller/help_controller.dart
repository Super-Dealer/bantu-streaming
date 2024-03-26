import '../../../core/app_export.dart';
import '../models/help_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HelpScreen.
///
/// This class manages the state of the HelpScreen, including the
/// current helpModelObj
class HelpController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HelpModel> helpModelObj = HelpModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  @override
  void onReady() {
    // TODO: implement Actions
  }
}
