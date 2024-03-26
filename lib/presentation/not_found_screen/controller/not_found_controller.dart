import '../../../core/app_export.dart';
import '../models/not_found_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the NotFoundScreen.
///
/// This class manages the state of the NotFoundScreen, including the
/// current notFoundModelObj
class NotFoundController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<NotFoundModel> notFoundModelObj = NotFoundModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
