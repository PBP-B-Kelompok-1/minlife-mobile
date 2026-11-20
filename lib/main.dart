import 'package:flutter/material.dart';
import 'package:minlife_mobile/app/ui/theme.dart';
import 'package:minlife_mobile/app/router.dart';

void main() {
  runApp(const MinlifeApp());
}

class MinlifeApp extends StatelessWidget {
  const MinlifeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Minlife Community',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      routerConfig: router,
    );
  }
}
