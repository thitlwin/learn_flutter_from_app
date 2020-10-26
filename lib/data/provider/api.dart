import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_flutter_from_app/data/model/layout_course.dart';
import 'package:meta/meta.dart';
import 'package:flutter/services.dart' show rootBundle;

const baseUrl = 'http://gerador-nomes.herokuapp.com/nomes/10';

class MyApiClient {
  final http.Client httpClient;
  MyApiClient({@required this.httpClient});

  getAll() async {
    try {
      Iterable jsonResponse = json.decode(
          await rootBundle.loadString('assets/json/layout_content.json'));
      List<LayoutCourseModel> listMyModel = jsonResponse
          .map((model) => LayoutCourseModel.fromJson(model))
          .toList();
      return listMyModel;
    } catch (_) {}
  }

  getId(id) async {
    try {
      var response = await httpClient.get(baseUrl);
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonResponse = json.decode(response.body);
        // TODO: implement methods!
      } else
        print('erro -get');
    } catch (_) {}
  }

  add(obj) async {
    try {
      var response = await httpClient.post(baseUrl,
          headers: {'Content-Type': 'application/json'}, body: jsonEncode(obj));
      if (response.statusCode == 200) {
        // TODO: implement methods!
      } else
        print('erro -post');
    } catch (_) {}
  }

  edit(obj) async {
    try {
      var response = await httpClient.put(baseUrl,
          headers: {'Content-Type': 'application/json'}, body: jsonEncode(obj));
      if (response.statusCode == 200) {
        // TODO: implement methods!
      } else
        print('erro -post');
    } catch (_) {}
  }

  delete(obj) async {
    try {
      var response = await httpClient.delete(baseUrl);
      if (response.statusCode == 200) {
        // TODO: implement methods!
      } else
        print('erro -post');
    } catch (_) {}
  }
}
