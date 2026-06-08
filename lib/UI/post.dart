import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:instagram_api/bloc/bloc/instagram_profile_bloc.dart';
import 'package:instagram_api/bloc/instagram_post/bloc/instagram_post_bloc.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  void initState() {
    super.initState();
    context.read<InstagramProfileBloc>().add(FetchInstagramProfileEvent());
    context.read<InstagramPostBloc>().add(FetchInstagramPostEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InstagramProfileBloc, InstagramProfileState>(
      builder: (context, state) {
        if (state is InstagramProfileBlocLoading) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is InstagramProfileBlocError) {
          return Center(
            child: Text(
              state.message,
              style: const TextStyle(color: Colors.red),
            ),
          );
        }
        if (state is InstagramProfileBlocLoaded) {
          final profile = state.profile;
          print(profile.profilePicUrl);
          return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              leading: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.arrow_back_ios_new, color: Colors.white),
              ),
              title: Center(
                child: Column(
                  children: [
                    Text(
                      'Post',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 18.sp,
                      ),
                    ),
                    Text(
                      profile.username! ?? "",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 14.sp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 30.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              child: ClipOval(
                                child: Image.network(
                                  profile.profilePicUrl ?? '',
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.cover,
                                  loadingBuilder: (context, child, progress) {
                                    if (progress == null) return child;
                                    return const CircularProgressIndicator();
                                  },
                                  errorBuilder: (context, error, stackTrace) {
                                    print('IMAGE ERROR: $error');
                                    return const Icon(Icons.person);
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: Text(
                                profile.fullName ?? '',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20.w),
                          child: Row(
                            children: [
                              Icon(Icons.more_horiz, color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  BlocBuilder<InstagramPostBloc, InstagramPostState>(
                    builder: (context, state) {
                      if (state is InstagramPostBlocLoading) {
                        return CircularProgressIndicator();
                      }
                      if (state is InstagramPostBlocError) {
                        return Text(
                          'Failed to lead post',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 223, 9, 9),
                          ),
                        );
                      }
                      if (state is InstagramPostBlocLoaded) {
                        print("POST LOADED");
                        print(state.posts.length);
                        print(
                          state
                              .posts
                              .first
                              .imageVersions2
                              ?.candidates
                              ?.first
                              .url,
                        );
                        final posts = state.posts;
                        final post = posts.first;

                        return Container(
                          width: double.infinity,
                          height: 600.h,
                          child: Image.network(
                            post.imageVersions2?.candidates?.first.url ?? '',
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: Colors.red,
                                child: const Icon(Icons.error),
                              );
                            },
                          ),
                        );
                      }
                      return const SizedBox();
                    },
                  ),
                ],
              ),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
