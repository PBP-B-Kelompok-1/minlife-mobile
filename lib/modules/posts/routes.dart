import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:minlife_mobile/app/ui/base_page.dart';

final postsRoutes = <RouteBase>[
  // TODO: real pages
  GoRoute(name: 'posts', path: '/posts', builder: (context, state) => BasePage(body: Text('posts'),),),
];
