import 'package:flutter/material.dart';
import 'package:farm_gilar/utilities/strings.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopPortfolioPage();
        } else if (constraints.maxWidth > 600 && constraints.maxWidth < 1200) {
          return TabletPortfolioPage();
        } else {
          return MobilePortfolioPage();
        }
      },
    );
  }
}

class DesktopPortfolioPage extends StatefulWidget {
  @override
  _DesktopPortfolioPageState createState() => _DesktopPortfolioPageState();
}

class _DesktopPortfolioPageState extends State<DesktopPortfolioPage> {
  var width;
  var height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0.08 * width),
      //width: width,
      //height: height * 0.5,
      child: Row(
        children: [
          Container(
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                workShowCaseImages(0.6 * height, 0.4 * width, kWorkImageUrl1),
                SizedBox(
                  height: 60,
                ),
                workShowCaseImages(0.6 * height, 0.4 * width, kWorkImageUrl2),
                SizedBox(
                  height: 60,
                ),
              ]),
            ),
          ),
          SizedBox(
            width: 60,
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                ),
                workShowCaseImages(0.6 * height, 0.4 * width, kWorkImageUrl3),
                SizedBox(
                  height: 60,
                ),
                workShowCaseImages(0.6 * height, 0.4 * width, kWorkImageUrl4),
                SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabletPortfolioPage extends StatefulWidget {
  @override
  _TabletPorfolioPageState createState() => _TabletPorfolioPageState();
}

class _TabletPorfolioPageState extends State<TabletPortfolioPage> {
  var width;
  var height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.only(left: 0.08 * width),
      child: Row(
        children: [
          Container(
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                workShowCaseImages(0.4 * height, 0.4 * width, kWorkImageUrl1),
                SizedBox(
                  height: 20,
                ),
                workShowCaseImages(0.4 * height, 0.4 * width, kWorkImageUrl2),
                SizedBox(
                  height: 20,
                ),
              ]),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                workShowCaseImages(0.4 * height, 0.4 * width, kWorkImageUrl3),
                SizedBox(
                  height: 20,
                ),
                workShowCaseImages(0.4 * height, 0.4 * width, kWorkImageUrl4),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobilePortfolioPage extends StatefulWidget {
  @override
  _MobilePortfolioPageState createState() => _MobilePortfolioPageState();
}

class _MobilePortfolioPageState extends State<MobilePortfolioPage> {
  var width;
  var height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      //height: height,
      padding: EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            workShowCaseImages(0.3 * height, 1 * width, kWorkImageUrl1),
            SizedBox(
              height: 20,
            ),
            workShowCaseImages(0.3 * height, 1 * width, kWorkImageUrl3),
            SizedBox(
              height: 20,
            ),
            workShowCaseImages(0.3 * height, 1 * width, kWorkImageUrl4),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

Widget workShowCaseImages(
    double imageHeight, double imageWidth, String imageUrl) {
  return Material(
    //color: Colors.white,
    borderRadius: BorderRadius.circular(8),
    elevation: 20,
    child: Container(
        width: imageWidth,
        height: imageHeight,
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Image(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        )),
  );
}
