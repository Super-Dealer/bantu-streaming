import 'package:bantu/widgets/app_bar/custom_app_bar.dart';
import 'package:bantu/widgets/app_bar/appbar_title_searchview.dart';
import 'models/recentsearches_item_model.dart';
import '../search_page/widgets/recentsearches_item_widget.dart';
import 'widgets/frame1_item_widget.dart';
import 'models/frame1_item_model.dart';
import 'widgets/frame2_item_widget.dart';
import 'models/frame2_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:bantu/core/app_export.dart';
import 'controller/search_controller.dart';
import 'models/search_model.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key})
      : super(
          key: key,
        );

  SearchController controller = Get.put(SearchController(SearchModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 24.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl_recent_searches".tr,
                  style: CustomTextStyles.titleMediumSemiBold,
                ),
              ),
              SizedBox(height: 11.v),
              _buildRecentSearches(),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_popular".tr,
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                    SizedBox(height: 9.v),
                    _buildFrame(),
                    SizedBox(height: 25.v),
                    Text(
                      "msg_recommendations".tr,
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                    SizedBox(height: 10.v),
                    _buildFrame1(),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 50.v,
      centerTitle: true,
      title: AppbarTitleSearchview(
        hintText: "msg_search_by_title".tr,
        controller: controller.searchController,
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentSearches() {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Obx(
        () => Wrap(
          runSpacing: 12.v,
          spacing: 12.h,
          children: List<Widget>.generate(
            controller.searchModelObj.value.recentsearchesItemList.value.length,
            (index) {
              RecentsearchesItemModel model = controller
                  .searchModelObj.value.recentsearchesItemList.value[index];

              return RecentsearchesItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return SizedBox(
      height: 135.v,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 12.h,
            );
          },
          itemCount:
              controller.searchModelObj.value.frame1ItemList.value.length,
          itemBuilder: (context, index) {
            Frame1ItemModel model =
                controller.searchModelObj.value.frame1ItemList.value[index];
            return Frame1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1() {
    return SizedBox(
      height: 135.v,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 12.h,
            );
          },
          itemCount:
              controller.searchModelObj.value.frame2ItemList.value.length,
          itemBuilder: (context, index) {
            Frame2ItemModel model =
                controller.searchModelObj.value.frame2ItemList.value[index];
            return Frame2ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
