import 'package:admin_dashboard/router/admin_handlers.dart';
import 'package:admin_dashboard/router/no_page_found_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter{
  static final FluroRouter router = new FluroRouter();

  static String rootRoute = '/';

  //Auth Router
  static String loginRoute = '/auth/login';
  static String registerRoute = '/auth/register';

  //Dashboard
  static String dashboardRoute = '/dashboard';

  static void configureRoutes(){
  //Auth routes
  router.define(rootRoute, handler: AdminHandlers.login);
  router.define(loginRoute, handler: AdminHandlers.login);
  //TODO: por hacer
  //router.define(registerRoute, handler: );

  //404
  router.notFoundHandler = NoPageFoundHandlers.noPageFound;
  }  
}