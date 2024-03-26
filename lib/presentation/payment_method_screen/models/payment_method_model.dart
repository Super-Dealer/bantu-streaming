import '../../../core/app_export.dart';
import 'paymentmethodlist_item_model.dart';

/// This class defines the variables used in the [payment_method_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentMethodModel {
  Rx<List<PaymentmethodlistItemModel>> paymentmethodlistItemList = Rx([
    PaymentmethodlistItemModel(
        googlePay: ImageConstant.imgGoogle3.obs, googlePay1: "Google Pay".obs),
    PaymentmethodlistItemModel(
        googlePay: ImageConstant.imgApple.obs, googlePay1: "Apple Pay".obs),
    PaymentmethodlistItemModel(
        googlePay: ImageConstant.imgCheckmark.obs, googlePay1: "Other".obs)
  ]);
}
