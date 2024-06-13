import 'package:flutter/material.dart';
import 'package:melhoracidade/presentation/auth/pages/login_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imlqd2l4bWlqZ3l4c2R4ZnRrdm1mIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc0NDgyNjEsImV4cCI6MjAzMzAyNDI2MX0.6acIxEmujlSpXNu8h_zNLM0NWBQ3Zi6gMVwEJeRmG5A',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imlqd2l4bWlqZ3l4c2R4ZnRrdm1mIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc0NDgyNjEsImV4cCI6MjAzMzAyNDI2MX0.6acIxEmujlSpXNu8h_zNLM0NWBQ3Zi6gMVwEJeRmG5A',
  );

  runApp(const MyApp());
}

// It's handy to then extract the Supabase client in a variable for later uses
//final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Melhora Cidade',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(
        key: UniqueKey(),
      ),
    );
  }
}
