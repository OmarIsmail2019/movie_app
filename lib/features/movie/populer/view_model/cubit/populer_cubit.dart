import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/features/movie/populer/model/populer_model.dart';
import 'package:movie_app/features/movie/populer/view_model/repository.dart';

part 'populer_state.dart';

class PopulerCubit extends Cubit<PopulerState> {
  final Repository repository;
  PopulerCubit(this.repository) : super(PopulerInitial());

  void emitAllPopuler() {
    repository.getPopulerMovies().then((populer) {
      emit(GetPopulerMovies(populer));
    });
  }
}
