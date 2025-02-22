import 'package:get/get.dart';

import '../../controller/home_page_controller.dart';

class GetXBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomepageController());
  }
}