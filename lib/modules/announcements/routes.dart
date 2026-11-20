import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:minlife_mobile/app/ui/base_page.dart';

final announcementsRoutes = <RouteBase>[
  // TODO: real pages
  GoRoute(name: 'announcements', path: '/announcements', builder: (context, state) => BasePage(body: Text('announcements'),),),
];
