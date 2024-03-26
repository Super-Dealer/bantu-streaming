import '../../../core/app_export.dart';
import '../models/no_history_model.dart';

/// A controller class for the NoHistoryScreen.
///
/// This class manages the state of the NoHistoryScreen, including the
/// current noHistoryModelObj
class NoHistoryController extends GetxController {
  Rx<NoHistoryModel> noHistoryModelObj = NoHistoryModel().obs;
}
