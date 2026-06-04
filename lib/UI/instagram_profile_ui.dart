import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_api/bloc/bloc/instagram_profile_bloc.dart';
import 'package:instagram_api/bloc/instagram_post/bloc/instagram_post_bloc.dart';

class InstagramProfileUi extends StatefulWidget {
  const InstagramProfileUi({super.key});

  @override
  State<InstagramProfileUi> createState() => _InstagramProfileUiState();
}

class _InstagramProfileUiState extends State<InstagramProfileUi> {
  @override
  void initState() {
    super.initState();
    print("EVENT FIRED");
    context.read<InstagramProfileBloc>().add(FetchInstagramProfileEvent());
    context.read<InstagramPostBloc>().add(FetchInstagramPostEvent());
  }

  String profileName = 'Unkwon user';
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
          final imageUrl =
              'https://corsproxy.io/?${Uri.encodeComponent(profile.profilePicUrl!)}';
          // setState(() {
          //     profileName = profile.username!;
          // });
          return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              leading: Icon(Icons.add, color: Colors.white),
              title: Row(
                children: [
                  Icon(Icons.lock_outline, color: Colors.white),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      profile.username!,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white),
                ],
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: Text(
                    '@',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Icon(Icons.menu, color: Colors.white),
                ),
              ],
            ),
            body: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 10.h),

                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
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
                          padding: EdgeInsets.only(left: 30.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                profile.fullName ?? '',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.sp,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '${profile.mediaCount ?? 0}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'post',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 30.w),

                                  Column(
                                    children: [
                                      Text(
                                        '${profile.followerCount ?? 0}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'followers',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 30.w),

                                  Column(
                                    children: [
                                      Text(
                                        '${profile.followingCount ?? 0}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'following',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: Row(
                      children: [
                        Container(
                          width: 100.w,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            border: Border.all(
                              color: const Color.fromARGB(65, 255, 255, 255),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.h),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  color: const Color.fromARGB(
                                    174,
                                    255,
                                    255,
                                    255,
                                  ),
                                  size: 15.sp,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Add banners',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10.sp,
                                      color: const Color.fromARGB(
                                        177,
                                        255,
                                        255,
                                        255,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 160.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: const Color.fromARGB(47, 255, 255, 255),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Center(
                              child: Text(
                                'Edit profile',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 160.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: const Color.fromARGB(47, 255, 255, 255),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Center(
                              child: Text(
                                'Share profile',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 50.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: const Color.fromARGB(47, 255, 255, 255),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Icon(
                              Icons.person_add_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),

                  Expanded(
                    child: DefaultTabController(
                      length: 4,
                      child: Column(
                        children: [
                          TabBar(
                            indicatorColor: Colors.white,
                            dividerColor: Colors.transparent,
                            tabs: [
                              Tab(
                                icon: Icon(Icons.grid_on, color: Colors.white),
                              ),
                              Tab(
                                icon: Icon(
                                  Icons.video_collection_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              Tab(icon: Icon(Icons.sync, color: Colors.white)),
                              Tab(
                                icon: Icon(
                                  Icons.person_pin_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                GridView.builder(
                                  itemCount: 12,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 2,
                                        mainAxisSpacing: 2,
                                      ),
                                  itemBuilder: (context, index) {
                                    return Container(
                                      color: Colors.grey.shade800,
                                      child: Icon(
                                        Icons.image,
                                        color: Colors.white,
                                      ),
                                    );
                                  },
                                ),
                                Center(
                                  child: Text(
                                    'No Reels',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    'No Shared Reels',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    'No tagged Post',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
