import 'package:flutter/material.dart';
import 'package:test1app/pages/home_page.dart';
import 'package:test1app/pages/quiz_page.dart';
import 'package:test1app/pages/review_quiz_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          textTheme: TextTheme(
            displayLarge: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w500,
              shadows: [
                Shadow(
                  color: Colors.purple.shade50.withOpacity(.3),
                  offset: const Offset(3, 3),
                  blurRadius: 5,
                ),
              ],
            ),
            displayMedium: TextStyle(
              color: Colors.purple.shade50,
              fontSize: 20,
            ),
            bodyLarge: TextStyle(
              color: Colors.purple.shade50,
              fontSize: 18,
            ),
          ),
          cardTheme: CardTheme(
            elevation: 6,
            color: Colors.indigo.shade900,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/quiz-page': (context) => const QuizPage(),
          '/review-page': (context) => const ReviewQuizPage(),
        });
  }
}
