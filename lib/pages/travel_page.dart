import 'package:flutter/material.dart';
import 'package:flutter_trip/dao/travel_tab_dao.dart';
import 'package:flutter_trip/models/index.dart';

class TravelPage extends StatefulWidget {
  @override
  _TravelPageState createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> with TickerProviderStateMixin {
  TabController _controller;
  List<TravelTabItem> tabs = [];
  TravelTabModel model;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 0, vsync: this);
    TravelTabDao.fetch().then((TravelTabModel tabModel) {
      _controller = TabController(length: tabModel.tabs.length, vsync: this);
      setState(() {
        tabs = tabModel.tabs;
        model = tabModel;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 40),
              child: TabBar(
                controller: _controller,
                isScrollable: true,
                labelColor: Colors.black,
                labelPadding: EdgeInsets.fromLTRB(20, 0, 10, 5),
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: Color(0xff2fcfbb),
                    width: 3,
                  ),
                  insets: EdgeInsets.only(bottom: 10),
                ),
                tabs: tabItems,
              ),
            ),
            Flexible(
              child: TabBarView(
                controller: _controller,
                children: tabs.map((e) => Text(e.groupChannelCode)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> get tabItems {
    return tabs.map((TravelTabItem item) {
      return Tab(
        text: item.labelName,
      );
    }).toList();
  }
}
