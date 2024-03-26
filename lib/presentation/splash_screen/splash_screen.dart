import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 5.v),
                      Container(
                          height: 90.adaptSize,
                          width: 90.adaptSize,
                          padding: EdgeInsets.all(19.h),
                          decoration: AppDecoration.white.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder45),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgWarning,
                              height: 41.adaptSize,
                              width: 41.adaptSize,
                              alignment: Alignment.center))
                    ]))));
  }
}
