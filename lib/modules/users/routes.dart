import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:minlife_mobile/app/ui/base_page.dart';

final usersRoutes = <RouteBase>[
  // TODO: real pages
  GoRoute(name: 'users', path: '/users', builder: (context, state) => BasePage(body: Text('users'),),),
];
