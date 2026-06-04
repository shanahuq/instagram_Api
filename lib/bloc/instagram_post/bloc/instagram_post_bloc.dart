import 'package:bloc/bloc.dart';
import 'package:instagram_api/repository/API/instgram_post_api.dart';
import 'package:instagram_api/repository/Models/instagram_post_models.dart';
import 'package:meta/meta.dart';

part 'instagram_post_event.dart';
part 'instagram_post_state.dart';

class InstagramPostBloc extends Bloc<InstagramPostEvent, InstagramPostState> {
InstagramPostApi instagramPostApi = InstagramPostApi();
late InstagramPostModels instagramPostModels;
  InstagramPostBloc() : super(InstagramPostInitial()) {
    on<FetchInstagramPostEvent>((event, emit) async {
      emit (InstagramPostBlocLoading());
      try {
        final instagram = await instagramPostApi.getpostinstagram();
        emit (InstagramPostBlocLoaded(instagram));
      } catch (e) {
        print ("API ERROR: $e");
        emit(InstagramPostBlocError());
      }
      // TODO: implement event handler
    });
  }
}
