import 'package:movie_app/features/movie/populer/model/populer_model.dart';
import 'package:movie_app/web_services/web_services.dart';

class Repository {
  final WebServices webServices;

  Repository(this.webServices);

  Future<Populer> getPopulerMovies() async {
    var response = await webServices.getPopulerMovies();
    return Populer.fromJson(response.toJson());
  }
}
