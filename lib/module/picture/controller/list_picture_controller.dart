import 'package:get/get.dart';
import 'package:mini_project/service/picture/picture_service.dart';

class ListPictureController extends GetxController {
  var pictures = [].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchPictures();
    super.onInit();
  }

  void fetchPictures({int page = 1, int limit = 10}) async {
    isLoading(true);
    try {
      final response = await PictureService.fetchPictures(page: page, limit: limit);
      pictures.value = response;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading(false);
    }
  }
}
