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

    return
        // SafeArea(
        //   child:
        AutoTabsRouter.pageView(
      routes: const [
        EventListRoute(),
        MapRoute(),
        FeedRoute(),
        ProfileRoute(),
      ],
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: NavigationBar(
            selectedIndex: tabsRouter.activeIndex,
            onDestinationSelected: tabsRouter.setActiveIndex,
            destinations: [
              NavigationDestination(
                icon: const Icon(Icons.home),
                label: l10n.homeNavListLabel,
              ),
              NavigationDestination(
                icon: const Icon(Icons.location_on),
                label: l10n.homeNavListLabel,
              ),
              NavigationDestination(
                icon: const Icon(Icons.search),
                label: l10n.homeNavListLabel,
              ),
              NavigationDestination(
                icon: const Icon(Icons.person),
                label: l10n.homeNavListLabel,
              ),
            ],

            // selectedItemColor: Theme.of(context).hintColor,
            // unselectedItemColor: Theme.of(context).disabledColor,
            // currentIndex: tabsRouter.activeIndex,
            // onTap: tabsRouter.setActiveIndex,
            // items: [
            //   BottomNavigationBarItem(
            //     label: l10n.homeNavListLabel,
            //     icon: const Icon(Icons.airplane_ticket),
            //   ),
            //   // BottomNavigationBarItem(
            //   //   label: l10n.homeNavSearchLabel,
            //   //   icon: const Icon(Icons.search),
            //   // ),
            //   BottomNavigationBarItem(
            //     label: l10n.homeNavFeedLabel,
            //     icon: const Icon(Icons.photo_camera_rounded),
            //   ),
            //   // BottomNavigationBarItem(
            //   //   label: l10n.homeNavProfileLabel,
            //   //   icon: const Icon(Icons.person),
            //   // ),
            // ],
          ),
        );
      },
      // ),
    );
  }
}
