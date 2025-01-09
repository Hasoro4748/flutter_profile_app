import 'package:flutter/material.dart';
import 'package:flutter_profile_app/pages/profile_page.dart';
import 'package:flutter_profile_app/theme.dart';

import 'components/profile_header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ProfilePage(),
    );
  }
}
