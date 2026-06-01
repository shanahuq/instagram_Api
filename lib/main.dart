import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_api/UI/instagram_profile_ui.dart';
import 'package:instagram_api/bloc/bloc/instagram_profile_bloc.dart';

void main() {
  runApp(BlocProvider(create: (_) => InstagramProfileBloc(),
    child:const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),

        home: const InstagramProfileUi (),
      ),
    );
  }
}

