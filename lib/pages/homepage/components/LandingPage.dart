import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 120.0,
              height: 50.0,
            ),
            Text(
              "g-ilar",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "g-ilar is our solution to help farmers distribute their product through online platform that probably similar with marketplace but this is spesific to farms only",
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
            // MaterialButton(
            //   color: Colors.white,
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.all(Radius.circular(20.0))),
            //   onPressed: () {},
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(
            //         vertical: 10.0, horizontal: 40.0),
            //     child: Text(
            //       "get started",
            //       style: TextStyle(color: Colors.black),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 70.0, horizontal: 100.0),
        child: Image.asset(
          "assets/icons/logo.png",
          width: width / 2,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        // ignore: missing_return
        builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: pageChildren(constraints.biggest.width / 2),
        );
      } else {
        return Column(
          children: pageChildren(constraints.biggest.width),
        );
      }
    });
  }
}
