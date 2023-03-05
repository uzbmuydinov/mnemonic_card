import 'package:get/get.dart';
import 'package:mnemonic_card/animation_card/animation_card_controller.dart';



class DIService implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimationCardController>(() => AnimationCardController(), fenix: true);

  }
}
