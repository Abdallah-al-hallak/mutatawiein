import 'package:auto_route/auto_route.dart';
import 'package:mutatawiein/association/view/ass_details.dart';
import 'package:mutatawiein/association/view/ass_view.dart';
import 'package:mutatawiein/form/view/form_view.dart';

import '../login/view/logIn_vieww.dart';

@MaterialAutoRouter(
  // replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LogInPagee, initial: true, name: 'LogInRoute'),
    AutoRoute(page: FormView, name: 'formRoute'),
    AutoRoute(page: EmptyRouterPage, name: 'AssociationRoute', children: [
      AutoRoute(
        path: '',
        page: AssociationView,
      ),
      AutoRoute(
        page: AssDetails,
        name: 'AssDetailsRoute',
      ),
    ]),
  ],
)
class $AppRouter {}
