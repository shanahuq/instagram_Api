import 'package:bloc/bloc.dart';
import 'package:instagram_api/repository/API/instagram_profile_api.dart';
import 'package:instagram_api/repository/Models/instagram_model.dart';
import 'package:meta/meta.dart';

part 'instagram_profile_event.dart';
part 'instagram_profile_state.dart';

class InstagramProfileBloc extends Bloc<InstagramProfileEvent, InstagramProfileState> {
  InstagramProfileApi instagramProfileApi = InstagramProfileApi();
  late InstagramProfileModel instagramProfileModel;
  InstagramProfileBloc() : super(InstagramProfileInitial()) {
    on<InstagramProfileEvent>((event, emit) async  {
      emit(InstagramProfileBlocLoading());
      try {
final instagram = await instagramProfileApi.getinstagram();
emit(InstagramProfileBlocLoaded());
      } catch(e) {
        print("ERROR: $e");
        emit(InstagramProfileBlocError());
      }
      // TODO: implement event handler
    });
  }
}
