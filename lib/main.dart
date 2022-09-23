import 'package:flutter/material.dart';
import 'package:flutter_responsive/responsive.dart';
import 'package:flutter_responsive/views/mobile_view.dart';
import 'views/desktop_view.dart';
import 'views/tablet_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Responsive',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Responsive(
        mobile: MobilView(),
        tablet: TabletView(),
        desktop: DesktopView(),
      ),
    );
  }
}
