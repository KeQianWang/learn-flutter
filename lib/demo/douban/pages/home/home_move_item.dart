
import 'package:flutter/material.dart';
import 'package:myapp/demo/douban/model/home_model.dart';
import 'package:myapp/demo/douban/widgets/dashed_line.dart';
import 'package:myapp/demo/douban/widgets/star_rating.dart';

class HomeMovieItem extends StatelessWidget {
  final MovieItem movie;

  HomeMovieItem(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 8, color: Color(0xffcccccc))
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeader(),
          SizedBox(height: 8),
          buildContent(),
          SizedBox(height: 8),
          buildFooter(),
        ],
      ),
    );
  }
  //1.头部布局
  Widget buildHeader(){
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 205, 144),
        borderRadius: BorderRadius.circular(3)
      ),
      child: Text(
        'NO.${movie.rank}',
        style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 131, 95, 36)),
      ),
    );
  }

  //2内容布局
  Widget buildContent(){
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildContentImage(),
          SizedBox(width: 5),
          Expanded(
              child: IntrinsicHeight(// todo IntrinsicHeight：固有高度
                child: Row(
                  children: [
                    buildContentInfo(),
                    SizedBox(width: 5),
                    buildContentLine(),
                    SizedBox(width: 5),
                    buildContentWish()
                  ],
                ),
            )
          )
        ],
    );
  }
  //2.1内容图片
  Widget buildContentImage(){
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network('${movie.data![0].poster}',height: 180,),
    );
  }
  //2.2 内容信息
  Widget buildContentInfo(){
    return Expanded( //todo 防止溢出
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildContentInfoTitle(),
            SizedBox(height: 8,),
            buildContentInfoRate(),
            SizedBox(height: 8,),
            buildContentInfoDesc()
          ],
        )
    );
  }
  // 电影标题
  Widget buildContentInfoTitle(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.play_circle_outline,
            color: Colors.pink,
            size: 25,
          ),
          Expanded(flex:1,child: Text('${movie.data![0].name}',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,) )),
          Text('(${movie.year})', style: TextStyle(fontSize: 18, color: Colors.grey),
          )
        ],
      ),
    );
  }
  // 电影评分
  Widget buildContentInfoRate(){
    return FittedBox(
      child: Row(
        children: [
          HYStarRating(rating: double.parse('${movie.imdbRating}'),size:20.0),
          SizedBox(width: 5),
          Text(
            "${movie.imdbRating}",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
  //电影描述
  Widget buildContentInfoDesc(){
    return Text(
      "${movie.data![0].genre}/${movie.data![0].description}",
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 16),
    );
  }
  // 2.3.内容的虚线
  Widget buildContentLine() {
    return Container(
      child: HYDashedLine(
        axis: Axis.vertical,
        dashedWidth: .4,
        dashedHeight: 6,
        count: 10,
        color: Colors.red,
      ),
    );
  }
  // 2.4.内容的想看
  Widget buildContentWish() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/images/home/wish.png",width: 40,),
          Text(
            "想看",
            style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 235, 170, 60)
            ),
          )
        ],
      ),
    );
  }
  // 3.尾部的布局
  Widget buildFooter() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xfff2f2f2),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        '${movie.originalName}',
        style: TextStyle(fontSize: 20, color: Color(0xff666666)),
      ),
    );
  }
}
