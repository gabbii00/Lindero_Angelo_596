import 'package:flutter/material.dart';
import 'package:modelhandling/screens/chat_screen.dart';
import 'package:modelhandling/screens/homepage.dart';
import 'package:modelhandling/screens/login_screen.dart';
import 'package:modelhandling/screens/product_screen.dart';
import 'package:modelhandling/screens/student_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
  url: "https://yhkcnqbbwpznyqtqtfyr.supabase.co",
  anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inloa2NucWJid3B6bnlxdHF0ZnlyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzA4ODcyNDMsImV4cCI6MjA4NjQ2MzI0M30.rq-B2luvkXfK3T_gCYcAYhlFb9EWwEjKXqSSopNeAWo"
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ChatPage(username: "gabbi"),
      debugShowCheckedModeBanner: false,
    );
  }
}