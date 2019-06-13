import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:make_my_trip_flutter_ui/Model/mmt.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  PageController controller, controller2;
  int currentpage = 0, currentpage2 = 0;
  AnimationController animationcontroller;
  Animation<double> animation;
  List<mmt> travelblog, hotelSearch, discover, trending, collections;
  TabController tabController;
  var colorBool;

  @override
  initState() {
    super.initState();
    controller = new PageController(
      initialPage: currentpage,
      keepPage: false,
      viewportFraction: 0.8,
    );
    controller2 = new PageController(
      initialPage: currentpage2,
      keepPage: false,
      viewportFraction: 0.4,
    );
    colorBool = [1, 0, 0, 0, 0];
    tabController = TabController(length: 5, vsync: this);
    animationcontroller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = Tween(begin: 0.0, end: 1.0).animate(animationcontroller);
    travelblog = List<mmt>();
    hotelSearch = List<mmt>();
    discover = List<mmt>();
    trending = List<mmt>();
    collections = List<mmt>();
    travelblog.add(mmt('assets/travel/mmt4.webp',
        'Mystical Homestays in Coorg for a Soulful Experience'));
    travelblog.add(mmt('assets/travel/mmt8.jpg',
        'Heading toSE Asia? Here\'s Why You Should Add Indonesia'));
    travelblog.add(mmt('assets/travel/mmt7.jpg',
        'Your Go-to Guide for Getting a Schengen Visa'));
    travelblog.add(mmt('assets/travel/mmt6.jpg',
        '5 Reasons to Visit Singapore With Kids This Summer'));
    travelblog.add(mmt('assets/travel/mmt5.jpeg',
        'Eight days of Holidaying fun in Ladakh - Here\' the Plan!'));

    hotelSearch.add(mmt('assets/hotel/mmt3.jpg', 'Dehradun'));
    hotelSearch.add(mmt('assets/hotel/hotel2.jpg', 'kerala'));
    hotelSearch.add(mmt('assets/hotel/hotel3.jpeg', 'Mumbai'));
    hotelSearch.add(mmt('assets/hotel/hotel4.webp', 'Delhi'));
    hotelSearch.add(mmt('assets/hotel/hotel5.webp', 'Goa'));

    discover.add(mmt('assets/discover/discover1.jpeg', 'Attractions'));
    discover.add(mmt('assets/discover/discover2.jpeg', 'Adventure'));
    discover.add(mmt('assets/discover/discover4.jpeg', 'City Tours'));
    discover.add(mmt('assets/discover/discover5.jpeg', 'Spa'));
    discover.add(mmt('assets/discover/discover6.png', 'Movies'));
    discover.add(mmt('assets/hotel/hotel2.jpg', 'Kerala'));
    discover.add(mmt('assets/hotel/hotel3.jpeg', 'Mumbai'));
    discover.add(mmt('assets/hotel/hotel5.webp', 'Goa'));

    trending.add(mmt(
        'assets/mmtimage1.jpg', 'Upto Rs.1700 cashback on Domestic Flights!'));
    trending.add(mmt(
        'assets/mmtimage2.jpg', 'Upto Rs.1700 cashback on Domestic Flights!'));
    trending.add(mmt(
        'assets/mmtimage3.jpg', 'Upto Rs.1700 cashback on Domestic Flights!'));
    trending.add(mmt(
        'assets/mmtimage4.jpg', 'Upto Rs.1700 cashback on Domestic Flights!'));

    collections.add(mmt('assets/collection/collection1.jpeg', 'Culture'));
    collections.add(mmt('assets/collection/collection2.jpeg', 'By the Sea'));
    collections.add(mmt('assets/collection/collection3.jpeg', 'Family'));
    collections.add(mmt('assets/collection/collection4.jpeg', 'Wildlife'));
    collections.add(mmt('assets/collection/collection5.jpeg', 'Business'));
    collections.add(mmt('assets/collection/collection6.jpeg', 'Nature'));
    collections.add(mmt('assets/collection/collection7.jpeg', 'Wine and Dine'));
    collections
        .add(mmt('assets/collection/collection8.jpeg', 'Romantic Stays'));
    collections.add(mmt('assets/collection/collection9.jpeg', 'Exotic Stays'));
    collections.add(mmt('assets/collection/collection10.jpeg', 'Spa'));
  }

  var image = [
    'assets/mmtimage1.jpg',
    'assets/mmtimage2.jpg',
    'assets/mmtimage3.jpg',
    'assets/mmtimage4.jpg',
  ];

  var imageName = [
    'Attractions',
    'Adventure',
    'Buffet',
    'City Tours',
    'Spa',
    'Movies'
  ];

  buildItem(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 300,
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 5),
                          child: Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    color: Colors.blue,
                                    width: 4,
                                    height: 12,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      'Offers',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Expires In 00d 7h 21m',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 11),
                              )
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 5),
                          child: Text(
                            'Make International Flights Lighter on Your Pocket!',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 10),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Avail No Cost EMI* and Upto \$2000 Off* \non Your International Flight Bookings',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 5),
                          child: Text(
                            'Exclusively on Bajaj Finserv\nEMI Cards',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 19,
          right: 30,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(
                // Where the linear gradient begins and ends
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                // Add one stop for each color. Stops should increase from 0 to 1
                stops: [0.1, 0.4, 0.7, 0.9],
                colors: [
                  // Colors are easy thanks to Flutter's Colors class.
                  Color(0xff42a5f5),
                  Color(0xff448aff),
                  Color(0xff2979ff),
                  Color(0xff2962ff),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'VIEW DETAILS',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
          ),
        )
      ],
    );
  }

  listItem(int index) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      width: 300,
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'assets/icons/src_assets_zerocancellationicon.png',
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'ZERO CANCELLATION CHARGE',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Upto 6 cancellations in a year on\nUnlimited Bookings',
                    style: TextStyle(
                        color: Colors.grey, fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      'KNOW MORE',
                      style: TextStyle(color: Colors.blue, fontSize: 11),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  listItemImage(int index) {
    if (index != 7) {
      return Container(
        height: 140,
        margin: EdgeInsets.only(left: 10),
        width: MediaQuery.of(context).size.width / 4,
        child: Stack(
          children: <Widget>[
            Container(
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Align(
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    discover[index].image,
                    width: MediaQuery.of(context).size.width / 4,
                    height: 140,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
                child: Text(
                  discover[index].name,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textAlign: TextAlign.left,
                ),
              ),
            )
          ],
        ),
      );
    } else {
      return Container(
        height: 140,
        margin: EdgeInsets.only(left: 10, right: 10),
        width: MediaQuery.of(context).size.width / 4,
        child: Stack(
          children: <Widget>[
            Container(
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Align(
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    discover[index].image,
                    height: 140,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
                child: Text(
                  discover[index].name,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textAlign: TextAlign.left,
                ),
              ),
            )
          ],
        ),
      );
    }
  }

  hotelList(int index) {
    if (index == 0) {
      return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        width: 150,
        margin: EdgeInsets.only(left: 10),
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                            child: Image.asset(
                              hotelSearch[index].image,
                              width: 150,
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                          ),
                          height: 80,
                        ),
                        Opacity(
                          opacity: 0.8,
                          child: Container(
                            width: 150,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                stops: [0.1, 0.3, 0.6, 0.9],
                                colors: [
                                  Colors.orange,
                                  Colors.deepOrangeAccent,
                                  Colors.deepOrangeAccent,
                                  Colors.deepOrange,
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 10,
                          child: Text(
                            hotelSearch[index].name,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            '25',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 13),
                          ),
                          Text(
                            'Views',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Booked may times\ntoday',
                        style:
                            TextStyle(color: Color(0xff26a69a), fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (index == 3) {
      return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        width: 150,
        margin: EdgeInsets.only(right: 10),
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                            child: Image.asset(
                              hotelSearch[index].image,
                              width: 150,
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                          ),
                          height: 80,
                        ),
                        Opacity(
                          opacity: 0.8,
                          child: Container(
                            width: 150,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                stops: [0.1, 0.3, 0.6, 0.9],
                                colors: [
                                  Colors.amber[200],
                                  Colors.amber[500],
                                  Colors.amber,
                                  Colors.amber[800],
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 10,
                          child: Text(
                            hotelSearch[index].name,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            '25',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 13),
                          ),
                          Text(
                            'Views',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Booked may times\ntoday',
                        style:
                            TextStyle(color: Color(0xff26a69a), fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else {
      return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        width: 150,
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                            child: Image.asset(
                              hotelSearch[index].image,
                              width: 150,
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10)),
                          ),
                          height: 80,
                        ),
                        Opacity(
                          opacity: 0.8,
                          child: Container(
                            width: 150,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                stops: [0.1, 0.3, 0.6, 0.9],
                                colors: [
                                  Color(0xff40c4ff),
                                  Color(0xff29b6f6),
                                  Color(0xff2196f3),
                                  Color(0xff1e88e5),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 10,
                          child: Text(
                            hotelSearch[index].name,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            '25',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 13),
                          ),
                          Text(
                            'Views',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Booked may times\ntoday',
                        style:
                            TextStyle(color: Color(0xff26a69a), fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }
  }

  travelList(int index) {
    if (index == 0) {
      return Container(
        width: 280,
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    child: Image.asset(
                      travelblog[index].image,
                      width: 280,
                      fit: BoxFit.fitHeight,
                      height: 180,
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
                    child: Text(travelblog[index].name),
                  )
                ],
              ),
            )
          ],
        ),
      );
    } else {
      return Container(
        width: 280,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    child: Image.asset(
                      travelblog[index].image,
                      width: 280,
                      fit: BoxFit.fitHeight,
                      height: 180,
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
                    child: Text(travelblog[index].name),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }
  }

  offerbuilder(int index) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 180,
        padding: EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width / 2,
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.asset(
                trending[index].image,
                height: 90,
                fit: BoxFit.fitHeight,
              ),
            ),
            Text(
              trending[index].name,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }

  collectionList(int index) {
    return Container(
      height: 170,
      margin: EdgeInsets.only(left: 10, top: 10),
      width: MediaQuery.of(context).size.width / 3,
      child: Stack(
        children: <Widget>[
          Container(
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  collections[index].image,
                  width: MediaQuery.of(context).size.width / 3,
                  height: 170,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50, left: 5, right: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    collections[index].name,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '40 PROPERTIES',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    animationcontroller.forward();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/icons/src_assets_iconflight.png',
                  height: 30,
                  width: 30,
                ),
                Text(
                  'Flights',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/icons/src_assets_iconhotel.png',
                  height: 30,
                  width: 30,
                ),
                Text(
                  'Hotels',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/icons/holidaysmmt.webp',
                  height: 30,
                  width: 30,
                ),
                Text(
                  'Holidays',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/icons/ic_home_bus.webp',
                  height: 30,
                  width: 30,
                ),
                Text(
                  'Bus',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/icons/src_assets_iconcab.png',
                  height: 30,
                  width: 30,
                ),
                Text(
                  'Cabs',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.blue),
        child: BottomNavigationBar(
            backgroundColor: Colors.grey[900],
            type: BottomNavigationBarType.fixed,
            currentIndex: 0,
            selectedItemColor: Colors.blue,
            showSelectedLabels: true,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/navigation icons/homemmtbtm.webp',
                    height: 20,
                    width: 20,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.grey[500]),
                  )),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/navigation icons/tripsmmtbtm.webp',
                    height: 20,
                    width: 20,
                  ),
                  title: Text(
                    'Trips',
                    style: TextStyle(color: Colors.grey[500]),
                  )),
              BottomNavigationBarItem(
                  icon: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      gradient: LinearGradient(
                        // Where the linear gradient begins and ends
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        // Add one stop for each color. Stops should increase from 0 to 1
                        stops: [0.1, 0.5, 0.7, 0.9],
                        colors: [
                          // Colors are easy thanks to Flutter's Colors class.
                          Colors.blue[400],
                          Color(0xff448aff),
                          Color(0xff448aff),
                          Color(0xff2979ff),
                        ],
                      ),
                    ),
                    child: Image.asset(
                      'assets/ic_launcher_foreground.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                  title: Text('')),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/navigation icons/walletmmt.webp',
                    height: 20,
                    width: 20,
                  ),
                  title: Text(
                    'Wallet',
                    style: TextStyle(color: Colors.grey[500]),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.help_outline,
                    color: Colors.grey[500],
                  ),
                  title: Text(
                    'Help',
                    style: TextStyle(color: Colors.grey[500]),
                  )),
            ]),
      ),
      body: Container(
        color: Colors.grey[200],
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: false,
              snap: false,
              backgroundColor: Colors.grey[200],
              expandedHeight: 80,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                background: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 60,
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/icons/trainsmmt.webp',
                                    height: 25,
                                    width: 25,
                                  ),
                                  Text(
                                    'Trains',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.home,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      'Homes & Villas',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 11),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/icons/src_assets_iconvisa.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                  Text(
                                    'Visa',
                                    style: TextStyle(color: Colors.black),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/icons/src_assets_experiences_active.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                  Text(
                                    'Experiences',
                                    style: TextStyle(color: Colors.black),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.card_giftcard,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    'Gift Cards',
                                    style: TextStyle(color: Colors.black),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              height: 20,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(200),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.white,
                height: 270,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topCenter,
                      child: FadeTransition(
                        opacity: animation,
                        child: Image.asset(
                          image[currentpage],
                          fit: BoxFit.fitWidth,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                    ),
                    PageView.builder(
                      itemCount: 4,
                      pageSnapping: false,
                      onPageChanged: (value) {
                        setState(() {
                          currentpage = value;
                          animationcontroller.repeat();
                        });
                      },
                      controller: controller,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return buildItem(context, index);
                      },
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'HOT ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'DEALS',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff212121),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: Text(
                                'VIEW ALL',
                                style: TextStyle(
                                    color: Color(0xffffd540), fontSize: 10),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 230,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'MMTDOUBLEBLACK',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey[500]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Benefits upto Rs. 75,000 at Rs. 1,499',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 15),
                        child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return listItem(index);
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                color: Colors.white,
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            'Discover yourself with us',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w200,
                                color: Colors.grey[500]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Amazing activities curated just for you',
                              style: TextStyle(color: Colors.black)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10, top: 15),
                          child: Container(
                            height: 150,
                            child: ListView.builder(
                              itemCount: 8,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return listItemImage(index);
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: <Widget>[
                          Opacity(
                              opacity: 0.9,
                              child: FadeTransition(
                                opacity: animation,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: ExactAssetImage(
                                            '${collections[currentpage2].image}'),
                                        fit: BoxFit.cover),
                                  ),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 4.0, sigmaY: 4.0),
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          color: Colors.white.withOpacity(0.0)),
                                    ),
                                  ),
                                ),
                              )),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 10, bottom: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Exclusive Collections',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 24),
                                    ),
                                    Text(
                                      'VIEW ALL',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  'Whatever your travel style, we have got the finest hotels to match it.',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, top: 15),
                                  child: PageView.builder(
                                    controller: controller2,
                                    itemCount: 10,
                                    dragStartBehavior: DragStartBehavior.down,
                                    pageSnapping: false,
                                    onPageChanged: (value) {
                                      setState(() {
                                        currentpage2 = value;
                                        animationcontroller.repeat();
                                      });
                                    },
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return collectionList(index);
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                color: Colors.white,
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: Text('Offers For You',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.grey[500])),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Curated specially for you',
                              style: TextStyle(color: Colors.black)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        DefaultTabController(
                          length: 5,
                          child: TabBar(
                              unselectedLabelColor: Colors.white,
                              labelColor: Colors.blue,
                              controller: tabController,
                              indicatorSize: TabBarIndicatorSize.label,
                              isScrollable: true,
                              onTap: (a) {
                                print(a);
                                setState(() {
                                  colorBool = [0, 0, 0, 0, 0];
                                  colorBool[a] = 1;
                                });
                              },
                              tabs: [
                                Tab(
                                  child: Container(
                                    child: Card(
                                      elevation: 3,
                                      color: colorBool[0] == 1
                                          ? Colors.blue[50]
                                          : Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5, right: 5),
                                              child: Image.asset(
                                                'assets/icons/percentage (1).png',
                                                height: 15,
                                                width: 15,
                                              ),
                                            ),
                                            Text(
                                              'TRENDING',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Container(
                                    child: Card(
                                      elevation: 3,
                                      color: colorBool[1] == 1
                                          ? Colors.blue[50]
                                          : Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5, right: 5),
                                              child: Image.asset(
                                                'assets/icons/plane.png',
                                                height: 15,
                                                width: 15,
                                              ),
                                            ),
                                            Text(
                                              'FLIGHTS',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Container(
                                    child: Card(
                                      elevation: 3,
                                      color: colorBool[2] == 1
                                          ? Colors.blue[50]
                                          : Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5, right: 5),
                                              child: Image.asset(
                                                'assets/icons/hotel.png',
                                                height: 15,
                                                width: 15,
                                              ),
                                            ),
                                            Text(
                                              'HOTELS',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Container(
                                    child: Card(
                                      elevation: 3,
                                      color: colorBool[3] == 1
                                          ? Colors.blue[50]
                                          : Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5, right: 5),
                                              child: Image.asset(
                                                'assets/icons/hot-air-balloon.png',
                                                height: 15,
                                                width: 15,
                                              ),
                                            ),
                                            Text(
                                              'HOLIDAYS',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Container(
                                    child: Card(
                                      elevation: 3,
                                      color: colorBool[4] == 1
                                          ? Colors.blue[50]
                                          : Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5, right: 5),
                                              child: Image.asset(
                                                'assets/icons/percentage (1).png',
                                                height: 15,
                                                width: 15,
                                              ),
                                            ),
                                            Text(
                                              'CABS',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ]),
                        ),
                        Container(
                            height: 360,
                            child: TabBarView(
                                physics: NeverScrollableScrollPhysics(),
                                controller: tabController,
                                children: [
                                  GridView.builder(
                                    itemCount: 4,
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2),
                                    itemBuilder: (context, index) {
                                      return offerbuilder(index);
                                    },
                                  ),
                                  GridView.builder(
                                    itemCount: 4,
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2),
                                    itemBuilder: (context, index) {
                                      return offerbuilder(index);
                                    },
                                  ),
                                  GridView.builder(
                                    itemCount: 4,
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2),
                                    itemBuilder: (context, index) {
                                      return offerbuilder(index);
                                    },
                                  ),
                                  GridView.builder(
                                    itemCount: 4,
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2),
                                    itemBuilder: (context, index) {
                                      return offerbuilder(index);
                                    },
                                  ),
                                  GridView.builder(
                                    itemCount: 4,
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2),
                                    itemBuilder: (context, index) {
                                      return offerbuilder(index);
                                    },
                                  ),
                                ])),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          height: 1,
                          color: Colors.grey,
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'View All Offers',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color: Colors.blue,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                color: Colors.white,
                height: 230,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Trending Hotel Searches',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey[500]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'Based on traveller searches around you',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return hotelList(index);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 150,
                margin: EdgeInsets.only(top: 20),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Cards for all your travel needs',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey[500]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Forex and Credit Cards',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 300,
                            alignment: Alignment.center,
                            child: Card(
                              child: ListTile(
                                title: Image.asset(
                                  'assets/icons/icicilogo.webp',
                                  height: 20,
                                  width: 20,
                                  alignment: Alignment.centerLeft,
                                ),
                                subtitle: Text(
                                  'Get MakeMyTrip ICICI\nBank Credit Cards',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                                leading: Image.asset(
                                  'assets/icons/icicilogo.webp',
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            width: 300,
                            alignment: Alignment.center,
                            child: Card(
                              child: ListTile(
                                title: Image.asset(
                                  'assets/icons/hdfclogo.webp',
                                  height: 20,
                                  width: 20,
                                  alignment: Alignment.centerLeft,
                                ),
                                subtitle: Text(
                                  'Get MakeMyTrip HDFC\nBank ForexPlus Cards',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                                leading: Image.asset(
                                  'assets/icons/hdfclogo.webp',
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 20),
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: Text(
                        'Travel Blog',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w300),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return travelList(index);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
