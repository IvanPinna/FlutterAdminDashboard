
import 'package:admin_dashboard/ui/views/login_view.dart';
import 'package:fluro/fluro.dart';

class AdminHandlers {
  static Handler login = new Handler(
    handlerFunc: (context, params) {
      return LoginView();
    }
  );
  
}