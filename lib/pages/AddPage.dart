import 'package:flutter/material.dart';
import 'package:qq/pages/AddPeopleOrGroup.dart';

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabLayout();
  }
}

class TabLayout extends StatefulWidget {
  const TabLayout({Key? key});

  @override
  State<TabLayout> createState() => _TabLayoutState();
}

class _TabLayoutState extends State<TabLayout> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          leading: BackButton(color: Colors.white),
          // 添加返回箭头按钮
          actions: [],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              indicator: BoxDecoration(),
              tabs: [
                Tab(text: '找人'),
                Tab(text: '找群'),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  Column(children: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                        padding: EdgeInsets.all(5.0),// 设置3dp的margin
                      decoration: BoxDecoration(
                        color: Color(0xFFF1F1F1FF), // 设置背景颜色为灰色
                        borderRadius: BorderRadius.circular(8.0), // 设置圆角半径为8.0
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.search, color: Colors.black), // 搜索图标
                          SizedBox(width: 8), // 用于添加图标和文本之间的间距
                          InkWell(
                            onTap: () {
                              // 在点击事件中导航到新页面
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AddPeopleOrGroup(), // 新页面的内容
                              ));
                            },
                            child: Text(
                              'QQ号/QID/手机号/群',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      )
                    )
                  ]),
                  Column(children: [
                    Container(
                        margin: EdgeInsets.all(5.0), // 设置3dp的margin
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F1F1FF), // 设置背景颜色为灰色
                          borderRadius: BorderRadius.circular(8.0), // 设置圆角半径为8.0
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.search, color: Colors.black), // 搜索图标
                            SizedBox(width: 8), // 用于添加图标和文本之间的间距
                            Text(
                              '搜索群号/群名称',
                              style: TextStyle(fontSize: 18), // 设置字体大小为18
                            ),
                          ],
                        )
                    )

                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
