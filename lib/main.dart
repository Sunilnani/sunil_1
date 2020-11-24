import 'package:flutter/material.dart';
import 'package:flutter_task11/lists1.dart';

import 'lists.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Container(
                      child: Text("Music",style: TextStyle(color: Colors.pink,fontSize: 35,fontWeight: FontWeight.w800),),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: Image.asset("img/music.jpg",fit: BoxFit.cover,height: 230,),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child:Padding(
                      padding: EdgeInsets.only(left:10.0),
                      child: Text("Recently played",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.w700,fontSize: 20),),
                    ),
                  ),
                  SizedBox(height: 15,),
                  SecondViewList(),
                  SizedBox(height: 15,),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child:Padding(
                      padding: EdgeInsets.only(left:10.0),
                      child: Text("New Releases",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.w700,fontSize: 20),),
                    ),
                  ),
                  SizedBox(height: 15,),
                  ThirdViewList(),


                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon:Icon(Icons.home),
                title: Text('Home'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.search),
                title: Text('Search'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.camera),
                title: Text('Camera'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.person),
                title: Text('Profile'),
                backgroundColor: Colors.black12
            ),
          ],
          onTap: (index){
            setState((){
              _currentIndex = index;
            }
            );
          },
        ),
      ),
    );
  }
}
class SecondViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount:recentCourses.length,
        itemBuilder: (context, index){
          return SecondViewCard(course: recentCourses[index]);
        },
      ),

    );
  }
}
class SecondViewCard extends StatelessWidget {
  SecondViewCard({@required this.course});
  final Course course;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: ClipRRect(

        child: Container(
            height: 250,
            width: 200,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left:10),
                    child: Image.asset(course.illustration,fit: BoxFit.cover,height: 110,),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Padding(
                    padding:  EdgeInsets.only(left:10.0,right:12),
                    child: Text(course.text,style: TextStyle(color: Colors.pink,fontSize: 15,fontWeight: FontWeight.w900),),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  child: Padding(
                    padding:  EdgeInsets.only(left:10.0,right:12),
                    child: Text(course.time,style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 10),),
                  ),
                ),
              ],
            )
        ),
      ),
    );



  }
}

class ThirdViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount:recentCoursesone.length,
        itemBuilder: (context, index){
          return ThirdViewCard(course: recentCoursesone[index]);
        },
      ),

    );
  }
}
class ThirdViewCard extends StatelessWidget {
  ThirdViewCard({@required this.course});
  final Course1 course;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: ClipRRect(

        child: Container(
            height: 250,
            width: 200,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left:10),
                    child: Image.asset(course.illustration,fit: BoxFit.cover,height: 110,),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Padding(
                    padding:  EdgeInsets.only(left:10.0,right:12),
                    child: Text(course.text,style: TextStyle(color: Colors.pink,fontSize: 15,fontWeight: FontWeight.w900),),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  child: Padding(
                    padding:  EdgeInsets.only(left:10.0,right:12),
                    child: Text(course.time,style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 10),),
                  ),
                ),
              ],
            )
        ),
      ),
    );



  }
}



