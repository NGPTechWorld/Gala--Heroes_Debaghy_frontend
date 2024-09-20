import 'package:debaghy/presentaition/pages/signup_page/signup_page_logic/signup_controller.dart';
import 'package:get/get.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SignupController(), permanent: true);
  }
}
