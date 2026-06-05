part of 'instagram_post_bloc.dart';

@immutable
sealed class InstagramPostState {}

final class InstagramPostInitial extends InstagramPostState {}
class InstagramPostBlocLoading extends InstagramPostState {}
class InstagramPostBlocLoaded extends InstagramPostState {
final List<InstagramPostModels>posts;
  InstagramPostBlocLoaded(this.posts);
}
class InstagramPostBlocError extends InstagramPostState {}