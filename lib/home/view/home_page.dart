import 'package:auto_route/auto_route.dart';
import 'package:beam/core/routes/app_router.gr.dart';
import 'package:beam/home/home.dart';
import 'package:beam/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return AutoTabsRouter.pageView(
        routes: const [ShowEventListRoute(), ShowFeedRoute()],
        builder: (context, child, pageController) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              items: const [
                BottomNavigationBarItem(
                  label: 'All Events',
                  icon: Icon(Icons.airplane_ticket),
                ),
                BottomNavigationBarItem(
                  label: 'Feed',
                  icon: Icon(Icons.search),
                ),
              ],
            ),
          );
        });
  }
}

class HomeText extends StatelessWidget {
  const HomeText({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final count = context.select((HomeCubit cubit) => cubit.state);
    return Text('$count', style: theme.textTheme.displayLarge);
  }
}
