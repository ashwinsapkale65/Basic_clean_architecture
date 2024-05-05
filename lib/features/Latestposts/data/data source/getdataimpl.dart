import 'dart:convert';

import 'package:learn_clean/features/Latestposts/data/data%20source/getdata.dart';
import 'package:learn_clean/features/Latestposts/data/models/Postmodel.dart';
import 'package:learn_clean/features/Latestposts/domain/entities/PostEntity.dart';
import 'package:http/http.dart' as http;

class getdataimpl implements Getdata
{
    @override
  Future<List<PostEntity>> GetPosts() async {
    try {

      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

      if (response.statusCode == 200) {

        final List<dynamic> data = json.decode(response.body);


        final List<Postmodel> posts = data.map((json) => Postmodel.fromJson(json)).toList();

        return posts;
      } else {
        throw Exception('Failed to fetch posts');
      }
    } catch (e) {
      
      throw Exception('Failed to fetch posts: $e');
    }
  }
  
}