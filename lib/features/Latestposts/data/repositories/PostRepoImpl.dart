import 'package:learn_clean/features/Latestposts/data/data%20source/getdata.dart';
import 'package:learn_clean/features/Latestposts/domain/entities/PostEntity.dart';
import 'package:learn_clean/features/Latestposts/domain/repositories/PostsRepo.dart';

class PostRepoImpl extends PostRepo {
  final Getdata getdata;
  PostRepoImpl({required this.getdata});
  @override
  Future<List<PostEntity>> GetPosts() async =>
    getdata.GetPosts();
  

}