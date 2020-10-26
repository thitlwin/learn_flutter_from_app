import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:learn_flutter_from_app/controller/layout_course_controller.dart';
import 'package:learn_flutter_from_app/data/model/layout_course.dart';
import 'package:learn_flutter_from_app/ui/code_output_page.dart';
import 'package:learn_flutter_from_app/widgets/loading_widget.dart';

import 'code_string.dart';

class LayoutCourseContentPage extends GetView<LayoutCourseController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layouts')),
      body: Container(
        child: GetX<LayoutCourseController>(initState: (state) {
          Get.find<LayoutCourseController>().getAll();
        }, builder: (_) {
          return _.layoutCourseList.length < 1
              ? LoadingWidget()
              : ListView.builder(
                  itemBuilder: (context, index) {
                    LayoutCourseModel obj =
                        _.layoutCourseList[index] as LayoutCourseModel;
                    return Container(
                      margin: EdgeInsets.only(left: 12, right: 12, top: 6),
                      child: Card(
                        child: ListTile(
                            title: Text(obj.title ?? '-'),
                            onTap: () => Get.to(CodeOutputPage(
                                  title: obj.title,
                                  code: mainAxisAlignmentCodeString,
                                  imageAsset: obj.assetImageFile,
                                ))),
                      ),
                    );
                  },
                  itemCount: _.layoutCourseList.length,
                );
        }),
      ),
    );
  }
}
