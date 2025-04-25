import 'package:flutter/material.dart';
import 'package:mudeer/core/routing/routes.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/more/presentation/screens/more_screen.dart';
import '../../features/notifications/presentation/screens/notifications_screen.dart';
import '../../features/search/presentation/screens/search_screen.dart';
import '../../features/tasks/presentation/screens/tasks_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.tasksScreen:
        return MaterialPageRoute(builder: (_) => const TasksScreen());
      case Routes.notificationsScreen:
        return MaterialPageRoute(builder: (_) => const NotificationsScreen());

      case Routes.searchScreen:
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      case Routes.moreScreen:
        return MaterialPageRoute(builder: (_) => const MoreScreen());

      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}
