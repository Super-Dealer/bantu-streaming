import '../../../core/app_export.dart';
import 'chooseplanlist_item_model.dart';

/// This class defines the variables used in the [choose_plan_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChoosePlanModel {
  Rx<List<ChooseplanlistItemModel>> chooseplanlistItemList =
      Rx([ChooseplanlistItemModel(voucher: "Voucher".obs)]);
}
