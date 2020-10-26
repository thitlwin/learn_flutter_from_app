import 'package:get/get.dart';
import 'package:learn_flutter_from_app/data/model/layout_course.dart';
import 'package:learn_flutter_from_app/data/repository/layout_course_repository.dart';
import 'package:meta/meta.dart';

class LayoutCourseController extends GetxController {
  final LayoutCourseRepository repository;
  LayoutCourseController({@required this.repository})
      : assert(repository != null);

  final _obj = LayoutCourseModel().obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;

  final _layoutCourseList = List<LayoutCourseModel>().obs;
  get layoutCourseList => this._layoutCourseList.value;
  set layoutCourseList(value) => this._layoutCourseList.value = value;

  getAll() {
    repository.getAll().then((data) {
      this.layoutCourseList = data;
    });
    print('content length = ${this.layoutCourseList}');
  }
}
