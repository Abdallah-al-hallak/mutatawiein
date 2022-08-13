import 'package:auto_route/auto_route.dart';
import 'package:mutatawiein/app/view/login_view.dart';
import 'package:mutatawiein/form/view/form_view.dart';

@MaterialAutoRouter(
  // replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LogInPage, initial: true, name: 'LogInRoute'),
    AutoRoute(page: FormView, name: 'formRoute'),
  ],
)
class $AppRouter {}
