import 'package:flutter/material.dart';
import 'package:supabase_auth/screens/login_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  /// TODO: update Supabase credentials with your own
  await Supabase.initialize(
    url: 'https://mfgwraeucyrccahupxhy.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1mZ3dyYWV1Y3lyY2NhaHVweGh5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjM0NjE0MzUsImV4cCI6MjAzOTAzNzQzNX0.NE6S1XTPm-LH1gBwZBa6IpVGJOVZntK4XLuTFZWYynA',
  );
  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
