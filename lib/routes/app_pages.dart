import 'package:get/get.dart';
import 'package:learn_flutter_from_app/bindings/layout_course_binding.dart';
import 'package:learn_flutter_from_app/ui/layout_course/layout_course_content_page.dart';
part './app_routes.dart';

// getpagesroutes

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.LAYOUT_COURSE_CONTENT,
        page: () => LayoutCourseContentPage(),
        binding: LayoutCourseBinding())
  ];
}
