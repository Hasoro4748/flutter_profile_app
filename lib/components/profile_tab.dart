import 'package:flutter/material.dart';

/////////////////////////////////
//상태가 있는 위젯

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  // 멤버 변수
  // TabController는 TabBar와 TabBarView를 동기화 하는 컨트롤러
  TabController? _tabController;

  //한번만 호출되는 메서드
  @override
  void initState() {
    super.initState();
    print('프로필 탭 내부 클래스 init호출');
    // length 는 탭의 개수를 의미
    // vsync 는 자연스러운 애니메이션 전환을 위해 TickerProvider를 활용한다.
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(child: _buildTabBarView()),
      ],
    );
  }

  TabBarView _buildTabBarView() {
    return TabBarView(controller: _tabController, children: [
      GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10, //열 (컬럼)사이의 간격 10
          crossAxisCount: 3,
          mainAxisSpacing: 10, // 행(로우) 사이의 간격
        ),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Image.network('https://picsum.photos/id/${index}/200/200');
        },
        itemCount: 40,
      ),
      Container(
        color: Colors.blue,
      ),
    ]);
  }

  TabBar _buildTabBar() {
    return TabBar(
      //중간 매개체로 연결
      controller: _tabController,
      tabs: [
        Tab(
          icon: Icon(Icons.ac_unit),
        ),
        Tab(
          icon: Icon(Icons.add_a_photo_outlined),
        ),
      ],
    );
  }
}
