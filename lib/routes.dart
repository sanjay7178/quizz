// import 'dart:js';

import 'package:quizz/home/home.dart';
import 'package:quizz/topics/topics.dart';
import 'package:quizz/about/about.dart';
import 'package:quizz/login/login.dart';
// import 'package:quizz/quizz/quizz.dart';
import 'package:quizz/profile/profile.dart';
import 'realtime/realtime.dart';

var appRoutes = {
  '/': (context) => HomeScreen(),
  '/login': (context) => LoginScreen(),
  '/topics': (context) => TopicsScreen(),
  '/profile': (context) => ProfileScreen(),
  '/about': (context) => AboutScreen(),
  '/realtime': (context) => RealScreen()
};
