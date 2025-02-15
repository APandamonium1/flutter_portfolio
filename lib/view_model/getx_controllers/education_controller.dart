import 'package:get/get.dart';

class EducationController extends GetxController {
  RxList<bool> hovers = [
    false,
    false,
    false,
    // false,
    // false,
    // false,
    // false,
    // false,
    // false,
  ].obs;

  onHover(int index, bool value) {
    hovers[index] = value;
  }
  // RxList<bool> hovers = <bool>[].obs;

  // void updateHoverList(int length) {
  //   hovers.assignAll(List.generate(length, (_) => false));
  // }

  // void onHover(int index, bool value) {
  //   if (index < hovers.length) {
  //     hovers[index] = value;
  //   }
  // }
}
