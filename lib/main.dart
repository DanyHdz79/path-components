import 'package:flutter/material.dart';
import 'package:path_objects_d/career_card.dart';
import 'package:path_objects_d/profile_pic.dart';
import 'package:path_objects_d/sidebar_menu.dart';
import 'package:path_objects_d/slider_path.dart';
import 'main_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'PATH objects'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int sPoints = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF493D73),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SidebarMenu(),
            MainButton(onTap: (){}, buttonText: 'Ingresar', leftButtonIcon: true),
            CareerCard(careerName: "Ingeniería química"),
            ProfilePic(),
            SliderPath(sColor: Colors.purple, sValue: sPoints, onChanged: (double points) {
              setState(() {
                sPoints = points.round();
                print(sPoints);
              });
            })
          ],
        ),
      ),
    );
  }
}
