import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_trip/dao/home_dao.dart';
import 'package:flutter_trip/models/index.dart';
import 'package:flutter_trip/pages/search_page.dart';
import 'package:flutter_trip/widget/grid_nav.dart';
import 'package:flutter_trip/widget/loading_container.dart';
import 'package:flutter_trip/widget/local_nav.dart';
import 'package:flutter_trip/widget/sales_box.dart';
import 'package:flutter_trip/widget/search_bar.dart';
import 'package:flutter_trip/widget/sub_nav.dart';
import 'package:flutter_trip/widget/webview.dart';

const APPBAR_SCROLL_OFFSET = 80;
const SEARCH_BAR_DEFAULT_TEXT = '网红打卡地 景点 酒店 美食';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoading = true;
  double appBarAlpha = 0;
  List<CommonModel> bannerList = [];
  List<CommonModel> localNavList = [];
  GridNavModel gridNavModel;
  List<CommonModel> subNavList = [];
  SalesBoxModel salesBox;
  String city = '西安市';

  @override
  void initState() {
    super.initState();
    _handleRefresher();
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

  Future<Null> _handleRefresher() async {
    HomeDao.fetch().then((model) {
      setState(() {
        bannerList = model.bannerList;
        localNavList = model.localNavList;
        gridNavModel = model.gridNav;
        subNavList = model.subNavList;
        salesBox = model.salesBox;
        _isLoading = false;
      });
    }).catchError((e) {
      print(e);
      setState(() {
        _isLoading = false;
      });
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: LoadingContainer(
        isLoading: _isLoading,
        child: Stack(
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
                child: RefreshIndicator(
                  child: _listView,
                  onRefresh: _handleRefresher,
                ),
              ),
            ),
            _appBar,
          ],
        ),
      ),
    );
  }

  Widget get _appBar {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0x66000000), Colors.transparent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            height: 90,
            decoration: BoxDecoration(
              color: Color.fromARGB((appBarAlpha * 255).toInt(), 255, 255, 255),
            ),
            child: SearchBar(
              searchBarType: (appBarAlpha > 0.2)
                  ? SearchBarType.homeLight
                  : SearchBarType.home,
              inputBoxClick: _jumpToSearch,
              speakClick: _jumpToSpeak,
              defaultText: SEARCH_BAR_DEFAULT_TEXT,
              leftButtonClick: _jumpToCity,
              city: city,
            ),
          ),
        ),
        Container(
          height: appBarAlpha > 0.2 ? 0.5 : 0,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 0.5)],
          ),
        ),
      ],
    );
  }

  Widget get _listView {
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      children: <Widget>[
        _banner,
        _localNav,
        _gridNav,
        _subNav,
        _salesBox,
      ],
    );
  }

  Widget get _banner {
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

  Widget get _localNav {
    return Padding(
      padding: EdgeInsets.fromLTRB(7, 4, 7, 4),
      child: LocalNav(localNavList: localNavList),
    );
  }

  Widget get _gridNav {
    return Padding(
      padding: EdgeInsets.fromLTRB(7, 0, 7, 4),
      child: GridNav(gridNavModel: gridNavModel),
    );
  }

  Widget get _subNav {
    return Padding(
      padding: EdgeInsets.fromLTRB(7, 4, 7, 4),
      child: SubNav(subNavList: subNavList),
    );
  }

  Widget get _salesBox {
    return Padding(
      padding: EdgeInsets.fromLTRB(7, 4, 7, 4),
      child: SalesBox(salesBox: salesBox),
    );
  }

  void _jumpToCity() {}

  void _jumpToSearch() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SearchPage(
          hint: SEARCH_BAR_DEFAULT_TEXT,
        ),
      ),
    );
  }

  //跳转语音识别页面
  void _jumpToSpeak() {
    // NavigatorUtil.push(context, SpeakPage());
  }
}
