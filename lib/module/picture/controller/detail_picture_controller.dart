import 'package:get/get.dart';
import 'package:mini_project/service/picture/picture_service.dart';

class DetailPictureController extends GetxController {
  var picture = {}.obs;
  var isLoading = true.obs;

  void fetchPictureDetail(String id) async {
    try {
      isLoading(true);
      final response = await PictureService.fetchPictureDetail(id);
      picture.value = response;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading(false);
    }
  }
}
