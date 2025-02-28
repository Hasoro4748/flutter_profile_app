import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        _buildSizedBox(),
        const SizedBox(width: 20),
        _buildColumn()
      ],
    );
  }

  Column _buildColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '강중원',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
        Text(
          '프로그래머/작가',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        Text(
          '데어 프로그래밍',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }

  SizedBox _buildSizedBox() {
    return SizedBox(
      width: 100,
      height: 100,
      child: Container(
        //AssetImage : 보통 위젯의 배경으로 동작할때, 꾸밀때 많이 활용
        //backgroundImage: AssetImage('assets/avatar.png'),
        child: Image(image: AssetImage('assets/avatar.png')),
      ),
    );
  }
}
