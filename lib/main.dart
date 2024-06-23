import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:melhoracidade/core/di/main_di.dart';
import 'package:melhoracidade/design_system/theme_data.dart';
import 'package:melhoracidade/presentation/auth/pages/login_page.dart';
import 'package:melhoracidade/presentation/home/home_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");
  final String url = dotenv.env['URL'] ?? '';
  final String anonkey = dotenv.env['anonkey'] ?? '';
  await Supabase.initialize(
    url: url,
    anonKey: anonkey,
  );
  setupDependencyInjection();
  //SupabaseClient supabaseClient = SupabaseClient(url, anonkey);
  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Melhora Cidade',
      theme: VZThemeApp.themeData,
      //initialRoute: AuthRoutes.base,
      home: supabase.auth.currentSession == null
          ? LoginPage(
              key: UniqueKey(),
            )
          : HomePage(
              key: UniqueKey(),
            ),
    );
  }
}
