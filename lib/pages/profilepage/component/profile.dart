import 'package:farm_gilar/pages/homepage/home_page.dart';
import 'package:farm_gilar/providers/utility_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

var name = 'DSC STIMIK TB';
var username = 'DSC STIMIK TB';
var email = 'Stimiktb@gmail.com';
var numberphone = '+628xxxxxxxxxx';
var address = 'Jln. Sokayasa, Kalisemi, Parakancanggah Banjarnegara';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopProfile();
        } else if (constraints.maxWidth > 600 && constraints.maxWidth < 1200) {
          return TabletProfile();
        } else {
          return MobileProfile();
        }
      },
    );
  }
}

class DesktopProfile extends StatelessWidget {
  var utilityProvider;
  ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    utilityProvider = Provider.of<UtilityProvider>(context);
    scrollController = utilityProvider.getScrollController();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        margin: EdgeInsets.fromLTRB(50, 50, 50, 50),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/user.jpg"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'edit',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.edit,
                          size: 14,
                        )
                      ],
                    ))
              ],
            ),
            SizedBox(
              width: 200,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name ',
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Username ',
                            style: TextStyle(color: Colors.black)),
                        SizedBox(
                          height: 10,
                        ),
                        Text('E-mail ', style: TextStyle(color: Colors.black)),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Phone Number ',
                            style: TextStyle(color: Colors.black)),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Address ', style: TextStyle(color: Colors.black)),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(': ' + name,
                            style: TextStyle(color: Colors.black)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(': ' + username,
                            style: TextStyle(color: Colors.black)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(': ' + email,
                            style: TextStyle(color: Colors.black)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(': ' + numberphone,
                            style: TextStyle(color: Colors.black)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(': ' + address,
                            style: TextStyle(color: Colors.black)),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context,
                              MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Home',
                                style: TextStyle(fontWeight: FontWeight.w600))
                          ],
                        ))
                  ],
                )
              ],
            )
            //detail profile
          ],
        ),
      ),
    );
  }
}

class TabletProfile extends StatelessWidget {
  var utilityProvider;
  ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    utilityProvider = Provider.of<UtilityProvider>(context);
    scrollController = utilityProvider.getScrollController();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        margin: EdgeInsets.fromLTRB(50, 50, 50, 50),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/user.jpg"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'edit',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.edit,
                          size: 14,
                        )
                      ],
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name ',
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Username ',
                            style: TextStyle(color: Colors.black)),
                        SizedBox(
                          height: 10,
                        ),
                        Text('E-mail ', style: TextStyle(color: Colors.black)),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Phone Number ',
                            style: TextStyle(color: Colors.black)),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            height: 40,
                            child: Text('Address ',
                                style: TextStyle(color: Colors.black))),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(': ' + name,
                            style: TextStyle(color: Colors.black)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(': ' + username,
                            style: TextStyle(color: Colors.black)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(': ' + email,
                            style: TextStyle(color: Colors.black)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(': ' + numberphone,
                            style: TextStyle(color: Colors.black)),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          width: 200,
                          child: Text(
                            ': ' + address,
                            style: TextStyle(color: Colors.black),
                            maxLines: 3,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context,
                              MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Home',
                                style: TextStyle(fontWeight: FontWeight.w600))
                          ],
                        ))
                  ],
                )
              ],
            )
            //detail profile
          ],
        ),
      ),
    );
  }
}

class MobileProfile extends StatelessWidget {
  var utilityProvider;
  ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    utilityProvider = Provider.of<UtilityProvider>(context);
    scrollController = utilityProvider.getScrollController();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        margin: EdgeInsets.fromLTRB(1, 1, 1, 1),
        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/user.jpg"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'edit',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.edit,
                          size: 14,
                        )
                      ],
                    ))
              ],
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Name ',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      name,
                      style: TextStyle(fontSize: 12, color: Colors.black38),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Username ',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      username,
                      style: TextStyle(fontSize: 12, color: Colors.black38),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'E-mail ',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      email,
                      style: TextStyle(fontSize: 12, color: Colors.black38),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Phone Number ',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      numberphone,
                      style: TextStyle(fontSize: 12, color: Colors.black38),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Address ',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      address,
                      style: TextStyle(fontSize: 12, color: Colors.black38),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context,
                              MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Home',
                                style: TextStyle(fontWeight: FontWeight.w600))
                          ],
                        ))
                  ],
                )
              ],
            )
            //detail profile
          ],
        ),
      ),
    );
  }
}
