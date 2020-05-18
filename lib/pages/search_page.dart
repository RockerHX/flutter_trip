import 'package:flutter/material.dart';
import 'package:flutter_trip/widget/search_bar.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索'),
      ),
      body: Column(
        children: <Widget>[
          SearchBar(
            hideLeft: true,
            defaultText: 'haha',
            hint: 'sb',
            leftButtonClick: () {
              Navigator.pop(context);
            },
            onChanged: _onTextChange,
          ),
        ],
      ),
    );
  }

  void _onTextChange(String text) async {
    // keyword = text;
    // if (text.length == 0) {
    //   setState(() {
    //     searchModel = null;
    //   });
    //   return;
    // }
    // try {
    //   SearchModel model = await SearchDao.fetch(keyword);
    //   //只有当当前输入的内容和服务端返回的内容一致时才渲染
    //   if (model.keyword == keyword) {
    //     setState(() {
    //       searchModel = model;
    //     });
    //   }
    // } catch (e) {
    //   print(e);
    // }
  }
}
