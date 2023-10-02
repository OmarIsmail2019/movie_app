part of 'populer_cubit.dart';

@immutable
abstract class PopulerState {}

class PopulerInitial extends PopulerState {}

class GetPopulerMovies extends PopulerState {
  final Populer allPopulerMovie;

  GetPopulerMovies(this.allPopulerMovie);
}
