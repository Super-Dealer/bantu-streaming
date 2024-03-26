import 'package:bantu/widgets/app_bar/custom_app_bar.dart';
import 'package:bantu/widgets/app_bar/appbar_title_searchview.dart';
import 'widgets/searchresult_item_widget.dart';
import 'models/searchresult_item_model.dart';
import 'package:flutter/material.dart';
import 'package:bantu/core/app_export.dart';
import 'controller/search_result_controller.dart';

class SearchResultScreen extends GetWidget<SearchResultController> {
  const SearchResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("msg_results_for_comedy".tr,
                          style: CustomTextStyles.bodyMediumWhiteA700),
                      SizedBox(height: 15.v),
                      _buildSearchResult()
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 50.v,
        centerTitle: true,
        title: AppbarTitleSearchview(
            hintText: "msg_search_by_title".tr,
            controller: controller.searchController));
  }

  /// Section Widget
  Widget _buildSearchResult() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: Obx(() => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 141.v,
                crossAxisCount: 3,
                mainAxisSpacing: 16.h,
                crossAxisSpacing: 16.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller
                .searchResultModelObj.value.searchresultItemList.value.length,
            itemBuilder: (context, index) {
              SearchresultItemModel model = controller
                  .searchResultModelObj.value.searchresultItemList.value[index];
              return SearchresultItemWidget(model);
            })));
  }
}
