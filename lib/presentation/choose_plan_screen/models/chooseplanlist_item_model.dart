import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

/// This class is used in the [chooseplanlist_item_widget] screen.
class ChooseplanlistItemModel {
  ChooseplanlistItemModel({
    this.voucher,
    this.inputsFieldController,
    this.id,
  }) {
    voucher = voucher ?? Rx("Voucher");
    inputsFieldController = inputsFieldController ?? TextEditingController();
    id = id ?? Rx("");
  }

  Rx<String>? voucher;

  TextEditingController? inputsFieldController;

  Rx<String>? id;
}
