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
    on<FetchInstagramProfileEvent>((event, emit) async  {
        print("BLOC EVENT RECEIVED");
      emit(InstagramProfileBlocLoading());
      try {
final instagram = await instagramProfileApi.getinstagram();
  print("API SUCCESS");
emit(InstagramProfileBlocLoaded(instagram));
      } catch (e) {
          print("API ERROR: $e");
  emit(InstagramProfileBlocError(e.toString()));
}
      // TODO: implement event handler
    });
  }
}
