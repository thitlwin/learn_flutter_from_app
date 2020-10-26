import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:learn_flutter_from_app/controller/layout_course_controller.dart';
import 'package:learn_flutter_from_app/data/provider/api.dart';
import 'package:learn_flutter_from_app/data/repository/layout_course_repository.dart';

class LayoutCourseBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LayoutCourseController>(() => LayoutCourseController(
        repository: LayoutCourseRepository(
            apiClient: MyApiClient(httpClient: http.Client()))));
  }
}
