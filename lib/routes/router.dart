import 'package:auto_route/auto_route.dart';
import 'package:nasted_routing_auto_route/home_page.dart';
import 'package:nasted_routing_auto_route/posts/posts_page.dart';
import 'package:nasted_routing_auto_route/posts/single_post_page.dart';
import 'package:nasted_routing_auto_route/settings/settings_page.dart';
import 'package:nasted_routing_auto_route/users/user_profile_page.dart';
import 'package:nasted_routing_auto_route/users/users_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: [
  AutoRoute(
    path: '/',
    page: HomePage,
    children: [
      AutoRoute(
        path: 'posts',
        name: 'PostsRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: '',
            page: PostsPage,
          ),
          AutoRoute(
            path: ':postId',
            page: SinglePostPage,
          ),
        ],
      ),
      AutoRoute(
        path: 'users',
        name: 'UsersRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: '',
            page: UsersPage,
          ),
          AutoRoute(
            path: ':userId',
            page: UserProfilePage,
          ),
        ],
      ),
      AutoRoute(
        path: 'settings',
        name: 'SettingsRouter',
        page: SettingsPage,
      ),
    ],
  )
])
class $AppRouter {}
