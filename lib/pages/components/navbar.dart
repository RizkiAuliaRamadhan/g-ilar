import 'dart:js';

import 'package:farm_gilar/pages/profilepage/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:farm_gilar/providers/utility_provider.dart';
import 'package:provider/provider.dart';

class TopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 600 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavBar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatefulWidget {
  @override
  _DesktopNavbarState createState() => _DesktopNavbarState();
}

class _DesktopNavbarState extends State<DesktopNavbar> {
  var utilityProvider;
  ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    utilityProvider = Provider.of<UtilityProvider>(context);
    scrollController = utilityProvider.getScrollController();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "g-ilar farm",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 30.0,
                ),
                Row(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        onSurface: Colors.green,
                      ),
                      onPressed: () {},
                      child: Text('Sign up'),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 20.0,
                      width: 1.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        onSurface: Colors.green,
                      ),
                      onPressed: () {},
                      child: Text('Sign in'),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 20,
                  ),
                  hoverColor: Colors.purple,
                  onPressed: () {},
                ),
                SizedBox(
                  width: 5,
                ),
                PopupMenuButton(
                    offset: const Offset(0.0, 50.0),
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 20,
                    ),
                    itemBuilder: (context) => [
                          PopupMenuItem(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  width: 50,
                                  height: 50,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'lib/icons/potato.png',
                                      ),
                                    ],
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Potato',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12),
                                  ),
                                  Text(
                                    '1x (10 kg)',
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontWeight: FontWeight.w200,
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Rp. 100.000',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          )),
                          PopupMenuItem(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                child: Image.asset(
                                  'lib/icons/carrot.png',
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Carrot',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12),
                                  ),
                                  Text(
                                    '2x (10 kg)',
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontWeight: FontWeight.w200,
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Rp. 80.000',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          )),
                          PopupMenuItem(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                child: Image.asset(
                                  'lib/icons/cabbage.png',
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cabbage',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12),
                                  ),
                                  Text(
                                    '5x (10 kg)',
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontWeight: FontWeight.w200,
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Rp. 100.000',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          )),
                          PopupMenuItem(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'View All',
                                    style: TextStyle(
                                        color: Colors.blueAccent, fontSize: 12),
                                  ))
                            ],
                          ))
                        ]),
                SizedBox(width: 5.0),
                IconButton(
                  icon: Icon(
                    Icons.chat,
                    color: Colors.white,
                    size: 20,
                  ),
                  hoverColor: Colors.purple,
                  onPressed: () {},
                ),
                SizedBox(
                  width: 5,
                ),
                PopupMenuButton(
                  offset: const Offset(0.0, 60.0),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ProfilePage();
                              }));
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.account_circle,
                                  size: 20,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  'Profile',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ))
                      ],
                    )),
                    PopupMenuItem(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.logout,
                                  size: 20,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  'Logout',
                                  style: TextStyle(color: Colors.red),
                                )
                              ],
                            ))
                      ],
                    )),
                  ],
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 20,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            "g-ilar farm",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  onSurface: Colors.green,
                ),
                onPressed: () {},
                child: Text('Sign up'),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 20.0,
                width: 1.0,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  onSurface: Colors.green,
                ),
                onPressed: () {},
                child: Text('Sign in'),
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 20,
                ),
                hoverColor: Colors.purple,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 20,
                ),
                hoverColor: Colors.purple,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.chat,
                  color: Colors.white,
                  size: 20,
                ),
                hoverColor: Colors.purple,
                onPressed: () {},
              ),
              PopupMenuButton(
                offset: const Offset(0.0, 60.0),
                itemBuilder: (context) => [
                  PopupMenuItem(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ProfilePage();
                            }));
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.account_circle,
                                size: 20,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Profile',
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ))
                    ],
                  )),
                  PopupMenuItem(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.logout,
                                size: 20,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Logout',
                                style: TextStyle(color: Colors.red),
                              )
                            ],
                          ))
                    ],
                  )),
                ],
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 20,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
