import 'package:flutter/material.dart';
import 'features/hello_world/presentation/hello_world_screen.dart';
import 'theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const HelloWorldScreen(),
    );
  }
}
