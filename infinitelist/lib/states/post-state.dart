import 'package:equatable/equatable.dart';
import 'package:infinitelist/model/post.dart';

abstract class PostState extends Equatable {
  const PostState();

  @override
  List<Object> get props => [];
}

class PostUninitialized extends PostState {}

class PostError extends PostState {}

class PostLoaded extends PostState {
  final List<Post> posts;
  final bool hasReachedMax;

  PostLoaded({this.posts, this.hasReachedMax}) {
    return PostLoaded(
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  String toString() =>
      'PostLoaded { posts: ${posts.length}, hasReachedMax: $hasReachedMax}';
}
