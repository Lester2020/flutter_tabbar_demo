import 'package:flutter/material.dart';
import 'package:flutter_tabbar_demo/pages/category_page.dart';
import 'package:flutter_tabbar_demo/pages/home_page.dart';
import 'package:flutter_tabbar_demo/pages/mine_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _index = 0;
  List<Widget> _bodys = [HomePage(), CategoryPage(), MinePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodys[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "首页"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: " "
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "首页"
          ),
        ],
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (int index){
          setState(() {
            _index = index;
          });
        },
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.blue,
        selectedFontSize: 11,
        unselectedFontSize: 11,
      ),
      floatingActionButton: Container(
        width: 80,
        height: 80,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40)
        ),
        child: FloatingActionButton(
          onPressed: (){
            setState(() {
              _index = 1;
            });
          },
          child: Icon(Icons.add, color: Colors.white),
          backgroundColor: _index == 1 ? Colors.orange : Colors.blue,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

