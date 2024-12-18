import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/story_model.dart';

class DetailStoryScreen extends ConsumerWidget {
  final Story story;
  const DetailStoryScreen({super.key, required this.story});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold();
  }
}
