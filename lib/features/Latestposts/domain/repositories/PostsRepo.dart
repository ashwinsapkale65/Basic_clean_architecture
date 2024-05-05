import 'package:learn_clean/core/UserLocation.dart';
import 'package:learn_clean/features/Latestposts/domain/entities/PostEntity.dart';

abstract class PostRepo {

      Future<List<PostEntity>> GetPosts();

}