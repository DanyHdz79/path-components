import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:icon_shadow/icon_shadow.dart';

class MainButton extends StatelessWidget {
  MainButton({@required this.onTap, @required this.buttonText, @required this.leftButtonIcon});

  final Function onTap;
  final String buttonText;
  final bool leftButtonIcon; // true = left icon, false = right icon

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: leftButtonIcon ?
      UnconstrainedBox(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: 15.0),
              /*
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: <Widget>[
                  Icon(MdiIcons.rhombus,
                    color: Colors.white.withOpacity(0.1),
                    size: 45.0),
                  Icon(MdiIcons.rhombus,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ],
              ),*/
              IconShadowWidget(
                Icon(MdiIcons.rhombus,
                color: Colors.white,
                size: 32.0,
                ),
              ),
              SizedBox(width: 15.0),
              Text(
                buttonText,
                style: TextStyle(
                  fontFamily: "Amaranth",
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 15.0),
            ],
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
          margin: EdgeInsets.all(5.0),
          padding: EdgeInsets.all(5.0),
          height: 50.0,
        ),
      ) :
      UnconstrainedBox(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: 15.0),
              Text(
                buttonText,
                style: TextStyle(
                  fontFamily: "Amaranth",
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 15.0),
              IconShadowWidget(
                Icon(MdiIcons.rhombus,
                  color: Colors.white,
                  size: 32.0,
                ),
              ),
              SizedBox(width: 15.0),
            ],
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(5.0),
          height: 50.0,
        ),
      ),
    );
  }
}
