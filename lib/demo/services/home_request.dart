
import 'package:myapp/demo/douban/model/home_model.dart';
import 'package:myapp/demo/services/http_request.dart';

class HomeRequest{

  static RequestMovieList() async {
    // 1.构建URL
    final movieURL = "?type=Imdb&skip=0&limit=50&lang=Cn";
    //发送网络请求
    final result = await HttpRequest.request(movieURL);
    // 3.将Map转成Model
    List<MovieItem> movies = [];
    for (var sub in result) {
      movies.add(MovieItem.fromJson(sub));
    }
    return movies;
  }
}