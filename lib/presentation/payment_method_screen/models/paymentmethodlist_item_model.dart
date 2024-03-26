import '../../../core/app_export.dart';

/// This class is used in the [paymentmethodlist_item_widget] screen.
class PaymentmethodlistItemModel {
  PaymentmethodlistItemModel({
    this.googlePay,
    this.googlePay1,
    this.id,
  }) {
    googlePay = googlePay ?? Rx(ImageConstant.imgGoogle3);
    googlePay1 = googlePay1 ?? Rx("Google Pay");
    id = id ?? Rx("");
  }

  Rx<String>? googlePay;

  Rx<String>? googlePay1;

  Rx<String>? id;
}
