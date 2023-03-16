import 'package:daily_news/ui/views/auth/auth_view.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MaApp());
}

class MaApp extends StatelessWidget {
  const MaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: Material(child: AuthView()),
    );
  }
}
