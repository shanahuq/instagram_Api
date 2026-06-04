part of 'instagram_post_bloc.dart';

@immutable
sealed class InstagramPostEvent {}
class FetchInstagramPostEvent extends InstagramPostEvent {}