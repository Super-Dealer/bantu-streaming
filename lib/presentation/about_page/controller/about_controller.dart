import '../../../core/app_export.dart';
import '../models/about_model.dart';

/// A controller class for the AboutPage.
///
/// This class manages the state of the AboutPage, including the
/// current aboutModelObj
class AboutController extends GetxController {
  AboutController(this.aboutModelObj);

  Rx<AboutModel> aboutModelObj;
}
