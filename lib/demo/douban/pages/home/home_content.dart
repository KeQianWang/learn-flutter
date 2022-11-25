
import 'package:flutter/material.dart';
import 'package:myapp/demo/douban/model/home_model.dart';
import 'package:myapp/demo/douban/pages/home/home_move_item.dart';
import 'package:myapp/demo/services/home_request.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  final List<MovieItem> movies = [];

  @override
  void initState() {
    super.initState();
    //发送网络请求
    HomeRequest.RequestMovieList().then((res) {
      setState(() {
        movies.addAll(res);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: movies.length,
        itemBuilder: (ctx,index){
          return HomeMovieItem(movies[index]);
        }
      );
  }
}
