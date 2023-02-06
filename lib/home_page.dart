import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nasted_routing_auto_route/routes/router.gr.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (context, tabsRouter) => AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('FlutterBottomNav'),
        centerTitle: true,
        leading: const AutoBackButton(),
      ),
      backgroundColor: Colors.indigo,
      routes: const [
        PostsRouter(),
        UsersRouter(),
        SettingsRouter(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return SalomonBottomBar(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            SalomonBottomBarItem(
              icon: const Icon(
                Icons.post_add,
                size: 30,
              ),
              title: const Text('Posts'),
              selectedColor: Colors.amberAccent,
            ),
            SalomonBottomBarItem(
              icon: const Icon(
                Icons.person,
                size: 30,
              ),
              title: const Text('users'),
              selectedColor: Colors.blue[200],
            ),
            SalomonBottomBarItem(
              icon: const Icon(
                Icons.settings,
                size: 30,
              ),
              title: const Text('Settings'),
              selectedColor: Colors.pinkAccent[100],
            ),
          ],
        );
      },
    );
  }
}
