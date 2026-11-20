import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:minlife_mobile/app/ui/theme.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    super.key,
    required this.body,
    this.appBar,
    this.floatingActionButton,
    this.endDrawer,
  });

  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? floatingActionButton;
  final Widget? endDrawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar ?? BaseAppBar(),
      body: SafeArea(child: body),
      floatingActionButton: floatingActionButton,
      endDrawer: endDrawer ?? BaseDrawer(),
    );
  }
}

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({super.key, this.title = 'minlife community'});

  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(automaticallyImplyLeading: false, title: Text(title));
  }
}

class NavItem {
  const NavItem({
    required this.label,
    required this.routeName
  });

  final String label;
  final String routeName;
}

class BaseDrawer extends StatelessWidget {
  const BaseDrawer({super.key});

  static const List<NavItem> navItems = [
    NavItem(label: 'home', routeName: 'home'),
    NavItem(label: 'journal', routeName: 'journal'),
    NavItem(label: 'weekly challenge', routeName: 'challenge'),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'minlife community',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColors.inkLight,
                  ),
                ),
              ],
            ),
          ),
          for (final item in navItems)
            ListTile(
              title: Text(item.label),
              onTap: () {
                Navigator.pop(context);
                context.goNamed(item.routeName);
              },
            )
       ],
      ),
    );
  }
}
