import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_signup_example/page/home_page.dart';
import 'package:login_signup_example/page/user_page.dart';
import 'package:login_signup_example/utils/user_preferences.dart';
import 'package:login_signup_example/utils/user_simple_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await UserPreferences.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Login & Signup';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          colorScheme: ColorScheme.dark(),
          scaffoldBackgroundColor: Colors.blue.shade300,
          accentColor: Colors.indigoAccent.withOpacity(0.8),
          unselectedWidgetColor: Colors.blue.shade200,
          switchTheme: SwitchThemeData(
            thumbColor: MaterialStateProperty.all(Colors.white),
          ),
        ),
        home: HomePage(),
      );
}
