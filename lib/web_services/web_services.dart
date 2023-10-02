import 'package:dio/dio.dart' hide Headers;
import 'package:movie_app/constant/constant.dart';
import 'package:movie_app/features/movie/populer/model/populer_model.dart';
import 'package:retrofit/retrofit.dart';

part 'web_services.g.dart';

@RestApi(baseUrl: baseUrl)

abstract class WebServices{
factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

  @GET(popular)
 
  Future<Populer> getPopulerMovies();
}