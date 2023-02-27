import 'package:auto_route/auto_route.dart';
import 'package:beam/core/routes/app_router.gr.dart';
import 'package:beam/l10n/l10n.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return SafeArea(
      child: AutoTabsRouter.pageView(
        routes: const [ShowEventListRoute(), ShowFeedRoute()],
        builder: (context, child, pageController) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              items: [
                BottomNavigationBarItem(
                  label: l10n.homeNavListLabel,
                  icon: const Icon(Icons.airplane_ticket),
                ),
                BottomNavigationBarItem(
                  label: l10n.homeNavFeedLabel,
                  icon: const Icon(Icons.search),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
