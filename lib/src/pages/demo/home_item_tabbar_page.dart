import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ho/src/utils/log_utils.dart';

/// 创建人： Created by zhaolong
/// 创建时间：Created by  on 2021/1/10.
///
/// 可关注公众号：我的大前端生涯   获取最新技术分享
/// 可关注网易云课堂：https://study.163.com/instructor/1021406098.htm
/// 可关注博客：https://blog.csdn.net/zl18603543572
///
/// 代码清单
///代码清单
class HomeItemTabbarPage extends StatefulWidget {
  @override
  _HomeItemTabbarPageState createState() => _HomeItemTabbarPageState();
}

class _HomeItemTabbarPageState extends State<HomeItemTabbarPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    LogUtils.e("页面创建");
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ListView.builder(
      padding: EdgeInsets.only(top: 10),
      itemCount: 120,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 120,
          child: Row(
            children: [
              SizedBox(
                width: 12,
              ),
              //左侧
              buildLeftColumn(),
              SizedBox(
                width: 14,
              ),
              //右侧
              Column(
                children: [
                  Text(
                    "这里是标题",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "这里是简介",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "这里是时间",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  Column buildLeftColumn() {
    return Column(
      children: [
        Container(
          width: 2,
          height: 8,
          color: Colors.blueGrey,
        ),
        ClipOval(
          child: Container(
            color: Colors.redAccent,
            width: 8,
            height: 8,
          ),
        ),
        Container(
          width: 2,
          height: 104,
          color: Colors.blueGrey,
        )
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
