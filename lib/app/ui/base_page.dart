import 'package:flutter/material.dart';
import 'package:minlife_mobile/app/ui/theme.dart';
import 'package:minlife_mobile/modules/posts/ui/frontpage.dart';

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

class BaseDrawer extends StatelessWidget {
  const BaseDrawer({super.key});

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
          ListTile(
            title: const Text('home'),
            // Navigate to the portfolio home screen
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Frontpage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
