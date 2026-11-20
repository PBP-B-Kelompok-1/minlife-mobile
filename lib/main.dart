import 'package:flutter/material.dart';
import 'package:minlife_mobile/modules/posts/ui/frontpage.dart';
import 'package:minlife_mobile/app/ui/theme.dart';

void main() {
  runApp(const MinlifeApp());
}

class MinlifeApp extends StatelessWidget {
  const MinlifeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minlife Community',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      home: Frontpage()
    );
  }
}
