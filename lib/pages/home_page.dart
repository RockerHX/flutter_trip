import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_trip/dao/home_dao.dart';
import 'package:flutter_trip/models/index.dart';
import 'package:flutter_trip/widget/grid_nav.dart';
import 'package:flutter_trip/widget/local_nav.dart';
import 'package:flutter_trip/widget/webview.dart';

const APPBAR_SCROLL_OFFSET = 100;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double appBarAlpha = 0;
  List<CommonModel> bannerList = [];
  List<CommonModel> localNavList = [];
  GridNavModel gridNavModel;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  _onscroll(offset) {
    double alpha = offset / APPBAR_SCROLL_OFFSET;
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    }
    setState(() {
      appBarAlpha = alpha;
    });
  }

  loadData() {
    HomeDao.fetch().then((model) {
      setState(() {
        bannerList = model.bannerList;
        localNavList = model.localNavList;
        gridNavModel = model.gridNav;
      });
    }).catchError((e) {
      print(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Stack(
        children: <Widget>[
          MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: NotificationListener(
              onNotification: (notification) {
                if (notification is ScrollUpdateNotification &&
                    notification.depth == 0) {
                  _onscroll(notification.metrics.pixels);
                }
                return true;
              },
              child: ListView(
                children: <Widget>[
                  _banner(),
                  _localNav(),
                  _gridNav(),
                  Container(
                    height: 1000,
                    child: ListTile(title: Text('resultString')),
                  ),
                ],
              ),
            ),
          ),
          Opacity(
            opacity: appBarAlpha,
            child: Container(
              height: 100,
              decoration: BoxDecoration(color: Colors.white),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('首页'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _banner() {
    return Container(
      height: 200,
      child: Swiper(
        itemCount: bannerList.length,
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            bannerList[index].icon,
            fit: BoxFit.fill,
          );
        },
        pagination: SwiperPagination(),
        onTap: (index) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebView(
                url: bannerList[index].url,
                statusBarColor: bannerList[index].statusBarColor,
                hideAppBar: bannerList[index].hideAppBar,
                title: bannerList[index].title,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _localNav() {
    return Padding(
      padding: EdgeInsets.fromLTRB(7, 4, 7, 4),
      child: LocalNav(localNavList: localNavList),
    );
  }

  Widget _gridNav() {
    return Padding(
      padding: EdgeInsets.fromLTRB(7, 0, 7, 4),
      child: GridNav(gridNavModel: gridNavModel),
    );
  }
}
