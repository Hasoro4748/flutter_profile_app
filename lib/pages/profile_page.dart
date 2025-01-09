import 'package:flutter/material.dart';

import '../components/profile_count_info.dart';
import '../components/profile_header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text('Profile'),
        centerTitle: true,
      ),
      endDrawer: Container(
        width: 200,
        //height: double.infinity,
        color: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          ProfileHeader(),
          const SizedBox(height: 20),
          ProfileCountInfo(),
          const SizedBox(height: 20),
          // 프로필 버튼 2개
          // 탭 바
        ],
      ),
    ));
  }
}
