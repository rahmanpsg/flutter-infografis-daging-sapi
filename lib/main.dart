import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/infografis_bloc.dart';
import 'bloc/olahan_bloc.dart';
import 'bloc/mitosfakta_bloc.dart';
import 'styles/constant.dart';
import 'screens/home.dart';
import 'screens/infografis.dart';
import 'screens/mitosFakta.dart';
import 'screens/anekaOlahan.dart';
import 'screens/tentang.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale("id"), Locale("en")],
      path: 'assets/translations',
      fallbackLocale: Locale("id"),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light),
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => InfografisBloc(),
        ),
        BlocProvider(
          create: (context) => OlahanBloc()..add(OlahanLoaded()),
        ),
        BlocProvider(
          create: (context) => MitosFaktaBloc()..add(MitosFaktaLoaded()),
        ),
      ],
      child: MaterialApp(
        // debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: ThemeData(
          // scaffoldBackgroundColor: bgColor,
          primaryColor: primaryColor,
          splashColor: secondaryColor,
          primarySwatch: Colors.red,
          fontFamily: 'Gothic',
          appBarTheme: Theme.of(context)
              .appBarTheme
              .copyWith(brightness: Brightness.dark),
        ),
        routes: {
          '/': (context) => HomeScreen(),
          '/infografis': (context) => InfografisScreen(),
          '/mitosFakta': (context) => MitosFaktaScreen(),
          '/anekaOlahan': (context) => AnekaOlahanScreen(),
          '/tentang': (context) => TentangScreen(),
        },
      ),
    );
  }
}
