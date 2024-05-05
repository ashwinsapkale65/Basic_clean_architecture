import 'package:learn_clean/core/UserLocation.dart';
import 'package:learn_clean/features/Latestposts/domain/entities/PostEntity.dart';
import 'package:learn_clean/features/Latestposts/domain/repositories/PostsRepo.dart';

class GetPostUsecase
{
  final PostRepo postRepo;
  GetPostUsecase({required this.postRepo});


  Future<List<PostEntity>> call() async{
    return postRepo.GetPosts();
  }
}