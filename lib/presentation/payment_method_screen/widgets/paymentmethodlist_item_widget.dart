import '../models/paymentmethodlist_item_model.dart';
import '../controller/payment_method_controller.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';

// ignore: must_be_immutable
class PaymentmethodlistItemWidget extends StatelessWidget {
  PaymentmethodlistItemWidget(
    this.paymentmethodlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PaymentmethodlistItemModel paymentmethodlistItemModelObj;

  var controller = Get.find<PaymentMethodController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.chipColor.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: paymentmethodlistItemModelObj.googlePay!.value,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 2.v,
            ),
            child: Obx(
              () => Text(
                paymentmethodlistItemModelObj.googlePay1!.value,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 20.adaptSize,
            width: 20.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.black900,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
              border: Border.all(
                color: theme.colorScheme.primaryContainer,
                width: 1.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
