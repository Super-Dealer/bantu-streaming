import 'widgets/similiar_item_widget.dart';
import 'models/similiar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/similiar_controller.dart';
import 'models/similiar_model.dart';

// ignore_for_file: must_be_immutable
class SimiliarPage extends StatelessWidget {
  SimiliarPage({Key? key}) : super(key: key);

  SimiliarController controller =
      Get.put(SimiliarController(SimiliarModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 36.v),
                decoration: AppDecoration.bg,
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    padding: EdgeInsets.symmetric(horizontal: 2.h),
                    decoration: AppDecoration.bg,
                    child: Column(children: [
                      SizedBox(height: 50.v),
                      Obx(() => GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: 141.v,
                                  crossAxisCount: 1,
                                  mainAxisSpacing: 1.h,
                                  crossAxisSpacing: 1.h),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: controller.similiarModelObj.value
                              .similiarItemList.value.length,
                          itemBuilder: (context, index) {
                            SimiliarItemModel model = controller
                                .similiarModelObj
                                .value
                                .similiarItemList
                                .value[index];
                            return SimiliarItemWidget(model);
                          }))
                    ])))));
  }
}
