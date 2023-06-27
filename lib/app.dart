
import 'package:flutter/material.dart';
import 'package:urgent_aid/Screens/login_screen.dart';
import 'package:urgent_aid/Screens/main.dart';
import 'package:urgent_aid/Screens/sign_up.dart';
import 'package:urgent_aid/components/colors.dart';

import 'Screens/welcome_screen.dart';

class UrgentAid extends StatelessWidget {
  const UrgentAid({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UrgentAid',
        initialRoute: '/welcome',
        routes: {
        '/welcome': (BuildContext context) => const WelcomeScreen(),
         'sign_up':  (BuildContext context) => const SignUpScreen(),
          '/log_in':  (BuildContext context) => const LoginScreen(),
          '/main':  (BuildContext context) => const MainScreen(),
        },
      theme: ThemeData(
          primaryColor: urgentAidPrimary,
          scaffoldBackgroundColor: urgentAidPrimary,
        elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: const StadiumBorder(),
        maximumSize: const Size(double.infinity, 56),
        minimumSize: const Size(double.infinity, 56),
    ),
        ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: urgentAidSecondary,
            iconColor: urgentAidBG,
            prefixIconColor: urgentAidBG,
            contentPadding: EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide.none,
            ),
          )),
      //home: const WelcomeScreen(),
    );
  }
}
