import 'package:farm_gilar/widgets/icon_widgets.dart';
import 'package:flutter/material.dart';
import 'package:farm_gilar/utilities/strings.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopContactPage();
      } else if (constraints.maxWidth > 600 && constraints.maxWidth < 1200) {
        return DesktopContactPage();
      } else {
        return MobileContactPage();
      }
    });
  }
}

// DESKTOP MODE
class DesktopContactPage extends StatefulWidget {
  @override
  _DesktopContactPageState createState() => _DesktopContactPageState();
}

class _DesktopContactPageState extends State<DesktopContactPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 0, 20, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //copyright
          Text(
            kRightsReserved,
            style: TextStyle(color: Colors.white),
          ),
          //menu
          Row(
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  onSurface: Colors.green,
                ),
                onPressed: () {},
                child: Text('Home'),
              ),
              SizedBox(
                width: 20,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  onSurface: Colors.green,
                ),
                onPressed: () {},
                child: Text('Privasi'),
              ),
              SizedBox(
                width: 20,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  onSurface: Colors.green,
                ),
                onPressed: () {},
                child: Text('Contact'),
              ),
            ],
          ),
          //icon
          Row(
            children: [
              iconWidget('linkedin'),
              SizedBox(
                width: 20,
              ),
              iconWidget('twitter'),
              SizedBox(
                width: 20,
              ),
              iconWidget('kGithubURL'),
            ],
          )
        ],
      ),
    );
  }
}

class MobileContactPage extends StatefulWidget {
  @override
  _MobileContactPageState createState() => _MobileContactPageState();
}

class _MobileContactPageState extends State<MobileContactPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 0, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //copyright
          Text(
            kRightsReserved,
            style: TextStyle(color: Colors.white),
          ),
          //menu
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  onSurface: Colors.green,
                ),
                onPressed: () {},
                child: Text('Home'),
              ),
              SizedBox(
                width: 20,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  onSurface: Colors.green,
                ),
                onPressed: () {},
                child: Text('Privasi'),
              ),
              SizedBox(
                width: 20,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  onSurface: Colors.green,
                ),
                onPressed: () {},
                child: Text('Contact'),
              ),
            ],
          ),
          //icon
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              iconWidget('linkedin'),
              SizedBox(
                width: 20,
              ),
              iconWidget('twitter'),
              SizedBox(
                width: 20,
              ),
              iconWidget('kGithubURL'),
            ],
          )
        ],
      ),
    );
  }
}
