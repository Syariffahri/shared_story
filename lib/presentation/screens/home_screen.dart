import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_story/core/themes/text_theme.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Text(
            'Judul home screen',
            style: CustomTextTheme.textTheme.titleMedium,
          ),
          const Text('Ini adalah halaman home'),
        ],
      ),
    );
  }
}
