part of 'posts_cubit.dart';

sealed class PostsState extends Equatable {
  const PostsState();

  @override
  List<Object> get props => [];
}

final class PostsInitial extends PostsState {}

final class Postloading extends PostsState {}

final class Postloaded extends PostsState {
    final List<PostEntity> posts;
    Postloaded({required this.posts});
} 


