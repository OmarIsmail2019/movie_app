import 'package:json_annotation/json_annotation.dart';
part 'populer_model.g.dart';

@JsonSerializable()
class Populer {
  int? page;
  @JsonKey(name: 'results')
  List<Results>? results;

  Populer({
    this.page,
    this.results,
  });
  factory Populer.fromJson(Map<String, dynamic> json) =>
      _$PopulerFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$PopulerToJson(this);
}


@JsonSerializable()

class Results {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'genre_ids')
  List<int>? genreIds;
  int? id;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  String? overview;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  String? title;
  @JsonKey(name: 'vote_average')
  double? voteAverage;

  Results({
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.voteAverage,
  });

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ResultsToJson(this);
}
