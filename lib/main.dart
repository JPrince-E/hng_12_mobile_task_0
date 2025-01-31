import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _urlGitHub =
    Uri.parse('https://github.com/JPrince-E/hng_12_mobile_task_0');
final Uri _urlHngTech = Uri.parse('https://hng.tech/hire/flutter-developers');

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('URL Launcher')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _launchUrlGitHub,
              child: const Text('GitHub link'),
            ),
            const SizedBox(height: 20), // Adds space between buttons
            ElevatedButton(
              onPressed: _launchUrlHngTech,
              child: const Text('HNG 12 link'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrlGitHub() async {
    if (!await launchUrl(_urlGitHub)) {
      throw Exception('Could not launch $_urlGitHub');
    }
  }

  Future<void> _launchUrlHngTech() async {
    if (!await launchUrl(_urlHngTech)) {
      throw Exception('Could not launch $_urlHngTech');
    }
  }
}
