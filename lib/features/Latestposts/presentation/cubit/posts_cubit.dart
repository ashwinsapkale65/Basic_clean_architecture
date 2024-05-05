import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:learn_clean/features/Latestposts/domain/entities/PostEntity.dart';
import 'package:learn_clean/features/Latestposts/domain/usecases/GetPostUsecase.dart';
part 'posts_state.dart';


class PostsCubit extends Cubit<PostsState> {
  final GetPostUsecase getPostUsecase;
  PostsCubit({required this.getPostUsecase}) : super(PostsInitial());

  Future<void> loadPost()async {
    emit(Postloading());
      try {
        await getPostUsecase.call().then((value) => emit(Postloaded(posts: value)));
      } catch (e) {
        
      }
  }
}
