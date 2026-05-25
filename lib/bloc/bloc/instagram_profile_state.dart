part of 'instagram_profile_bloc.dart';

@immutable
sealed class InstagramProfileState {}

final class InstagramProfileInitial extends InstagramProfileState {}
class InstagramProfileBlocLoading extends InstagramProfileState {}
class InstagramProfileBlocLoaded extends InstagramProfileState {}
class InstagramProfileBlocError extends InstagramProfileState {}
