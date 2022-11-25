import 'package:flutter/material.dart';

import '../home/home.dart';
import '../subject/subject.dart';
import 'bottom_bar_item.dart';

List<BottomeBarItem> items = [
  BottomeBarItem('home','首页'),
  BottomeBarItem("subject", "书影音"),
  BottomeBarItem("group", "小组"),
  BottomeBarItem("mall", "市集"),
  BottomeBarItem("profile", "我的"),
];

List<Widget> pages = [
  HomePage(),
  SubjectPage(),
];