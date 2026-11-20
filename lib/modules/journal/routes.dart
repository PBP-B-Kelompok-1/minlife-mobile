import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:minlife_mobile/app/ui/base_page.dart';

final journalRoutes = <RouteBase>[
  // TODO: real pages
  GoRoute(name: 'journal', path: '/journal', builder: (context, state) => BasePage(body: Text('journal'),),),
];
