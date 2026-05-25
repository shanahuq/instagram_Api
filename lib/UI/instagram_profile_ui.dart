import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_api/bloc/bloc/instagram_profile_bloc.dart';

class InstagramProfileUi extends StatefulWidget {
  const InstagramProfileUi({super.key});

  @override
  State<InstagramProfileUi> createState() => _InstagramProfileUiState();
}

class _InstagramProfileUiState extends State<InstagramProfileUi> {
  @override
void initState() {
  super.initState();
  context.read<InstagramProfileBloc>().add(FetchInstagramProfileEvent());
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
    );
  }
}