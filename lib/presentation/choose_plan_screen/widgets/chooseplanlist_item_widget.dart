import '../models/chooseplanlist_item_model.dart';
import '../controller/choose_plan_controller.dart';
import 'package:bantu/widgets/custom_text_form_field.dart';
import 'package:bantu/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';

// ignore: must_be_immutable
class ChooseplanlistItemWidget extends StatelessWidget {
  ChooseplanlistItemWidget(
    this.chooseplanlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChooseplanlistItemModel chooseplanlistItemModelObj;

  var controller = Get.find<ChoosePlanController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.chipColor.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => Text(
              chooseplanlistItemModelObj.voucher!.value,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildInputsField(),
              _buildApplyButton(),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInputsField() {
    return CustomTextFormField(
      width: 202.h,
      controller: chooseplanlistItemModelObj.inputsFieldController,
      hintText: "msg_have_a_vucher_code".tr,
      hintStyle: CustomTextStyles.bodySmallPrimaryContainer,
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 11.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
      filled: true,
      fillColor: appTheme.blueGray800,
    );
  }

  /// Section Widget
  Widget _buildApplyButton() {
    return CustomElevatedButton(
      height: 39.v,
      width: 80.h,
      text: "lbl_apply".tr,
      buttonStyle: CustomButtonStyles.fillPrimaryTL18,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }
}
