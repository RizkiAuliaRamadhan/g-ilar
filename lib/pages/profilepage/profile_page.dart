import 'package:farm_gilar/pages/components/contact_page.dart';
import 'package:farm_gilar/pages/components/navbar.dart';
import 'package:farm_gilar/pages/profilepage/component/profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:farm_gilar/providers/utility_provider.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var utilityProvider;
  var width;
  var height;
  //ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    utilityProvider = Provider.of<UtilityProvider>(context);
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.blue, Colors.blue]),
            ),
            child: SingleChildScrollView(
                controller: utilityProvider.getScrollController(),
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [TopNavbar(), Profile(), ContactPage()],
                ))));
  }
}
