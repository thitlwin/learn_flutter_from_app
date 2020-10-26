class LayoutCourseModel {
  int id;
  String title;
  String code;
  String assetImageFile;

  LayoutCourseModel({id, name});

  LayoutCourseModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.title = json['title'];
    this.code = json['code'];
    this.assetImageFile = json['assetImageFile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['code'] = this.code;
    data['assetImageFile'] = this.assetImageFile;
    return data;
  }
}
