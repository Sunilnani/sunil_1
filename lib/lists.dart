import 'package:flutter/cupertino.dart';

class Course{
  Course({
    this.coursetitle,
    this.background,
    this.illustration,
    this.text,
    this.time,
    this.logo,
  });
  String coursetitle;
  LinearGradient background;
  String illustration;
  String text;
  String time;
  String logo;
}
var recentCourses = [
  Course(
      background: LinearGradient(
        begin: Alignment.topLeft,
        end:  Alignment.bottomRight,
        colors: [
          Color(0xFF00AEFF),
          Color(0xFF0076FF),
        ],
      ),
      illustration: 'img/telugu.jpeg',
      text: "mass hits",
      time:" 4 min song"

  ),Course(

      background: LinearGradient(
        begin: Alignment.topLeft,
        end:  Alignment.bottomRight,
        colors: [
          Color(0xFF00AEFF),
          Color(0xFF0076FF),
        ],
      ),
      illustration: 'img/hollywood.jpg',
      text: "Hollywood tunes",
      time:" 4 min song"

  ),Course(

      background: LinearGradient(
        begin: Alignment.topLeft,
        end:  Alignment.bottomRight,
        colors: [
          Color(0xFF00AEFF),
          Color(0xFF0076FF),
        ],
      ),
      illustration: 'img/music.jpg',
      text: "pre-algebra this is the best way of learn.",
      time:" 3 min read"

  ),Course(

      background: LinearGradient(
        begin: Alignment.topLeft,
        end:  Alignment.bottomRight,
        colors: [
          Color(0xFF00AEFF),
          Color(0xFF0076FF),
        ],
      ),
      illustration: 'img/music.jpg',
      text: "final-algebra this is the best way of learn.",
      time:" 3 min read"

  ),
];
// explore couses
