import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_passando_arguments_example/app/core/navigator_observer_custom.dart';
import 'package:flutter_passando_arguments_example/app/home/cidades/cidades_page.dart';
import 'package:flutter_passando_arguments_example/app/home/forms_page.dart';
import 'package:flutter_passando_arguments_example/app/home/home_page.dart';
import 'package:flutter_passando_arguments_example/app/home/layout_builder_page.dart';
import 'package:flutter_passando_arguments_example/app/home/media_query_page.dart';
import 'package:flutter_passando_arguments_example/app/home/page2.dart';
import 'package:flutter_passando_arguments_example/app/home/stack_page.dart';
import 'package:flutter_passando_arguments_example/app/novos_testes/paint_page.dart';
import 'package:flutter_passando_arguments_example/arguments/arguments_classe.dart';
import 'package:flutter_passando_arguments_example/arguments/arguments_inteiro_page.dart';
import 'package:flutter_passando_arguments_example/arguments/arguments_string_page.dart';
import 'package:flutter_passando_arguments_example/arguments/lista_page.dart';
import 'package:flutter_passando_arguments_example/arguments/map_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (_) {
        WidgetsFlutterBinding.ensureInitialized();
        return const MyApp();
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      navigatorObservers: [
        NavigatorObserverCustom(),
      ],
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const HomePage(),
      initialRoute: '/forms',
      routes: {
        '/page2': (_) => const Page2(),
        '/media_query': (_) => const MediaQueryPage(),
        '/layout_builer': (_) => const LayoutBuilderPage(),
        '/map_page': (_) => const MapPage(),
        '/lista_page': (_) => const ListaPage(),
        '/classe_page': (_) => const ArgumentsClasse(),
        '/arguments_inteiro_page': (_) => const ArgumentsInteiroPage(),
        '/arguments_string_page': (_) => const ArgumentsStringPage(),
        '/forms': (_) => const FormsPage(),
        '/cidades': (_) => const CidadesPage(),
        '/stack': (_) => const StackPage(),
        '/paint': (_) => const PaintPage(),
      },
    );
  }
}
