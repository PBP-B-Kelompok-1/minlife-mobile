import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:minlife_mobile/app/ui/base_page.dart';

final challengeRoutes = <RouteBase>[
  // TODO: real pages
  GoRoute(name: 'challenge', path: '/challenge', builder: (context, state) => BasePage(body: Text('challenge'),),),
];
