import 'package:learn_flutter_from_app/data/model/layout_course.dart';
import 'package:learn_flutter_from_app/data/provider/api.dart';
import 'package:meta/meta.dart';

class LayoutCourseRepository {
  final MyApiClient apiClient;

  LayoutCourseRepository({@required this.apiClient})
      : assert(apiClient != null);

  getAll() {
    return apiClient.getAll();
  }

  // getId(id) {
  //   return apiClient.getId(id);
  // }

  // delete(id) {
  //   return apiClient.delete(id);
  // }

  // edit(obj) {
  //   return apiClient.edit(obj);
  // }

  // add(obj) {
  //   return apiClient.add(obj);
  // }
}
