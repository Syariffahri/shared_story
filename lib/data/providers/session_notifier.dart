import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sessionProvider =
    StateNotifierProvider<SessionNotifier, String?>((ref) => SessionNotifier());

class SessionNotifier extends StateNotifier<String?> {
  SessionNotifier() : super(null);

  Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
    state = token;
  }

  Future<void> loadToken() async {
    final prefs = await SharedPreferences.getInstance();
    state = prefs.getString('token');
  }

  Future<void> clearToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
    state = null;
  }
}
