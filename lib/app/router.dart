import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:minlife_mobile/modules/posts/ui/frontpage.dart';
import 'package:minlife_mobile/modules/announcements/routes.dart';
import 'package:minlife_mobile/modules/journal/routes.dart';
import 'package:minlife_mobile/modules/posts/routes.dart';
import 'package:minlife_mobile/modules/users/routes.dart';
import 'package:minlife_mobile/modules/weeklychallenge/routes.dart';

final router = GoRouter(
  // redirect: (context, state) {
  //   final loggedIn = /* read auth state */ false;
  //   if (!loggedIn && state.matchedLocation != '/login') return '/login';
  //   return null;
  // }, // dikasih claude, kalo ga sesuai apus aja
  routes: [
    GoRoute(name: 'home', path: '/', builder: (context, state) => const Frontpage()),
    ...announcementsRoutes,
    ...journalRoutes,
    ...postsRoutes,
    ...usersRoutes,
    ...challengeRoutes,
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(child: Text('Page not found: ${state.uri}')),
  ),
);
