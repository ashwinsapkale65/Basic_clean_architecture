import 'package:learn_clean/features/Latestposts/domain/entities/PostEntity.dart';

class Postmodel extends PostEntity {
  Postmodel({
    required int? userId,
    required int? id,
    required String? title,
    required String? body,
  }) : super(
          body: body,
          id: id,
          title: title,
          userId: userId,
        );

  Postmodel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    data['body'] = body;
    return data;
  }
}
