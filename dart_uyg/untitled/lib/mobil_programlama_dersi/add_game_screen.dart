import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class SharedPrefsHelper {
  static const String key = "games_list";

  static Future<void> saveGames(List<Map<String, dynamic>> games) async {
    final prefs = await SharedPreferences.getInstance();
    String jsonString = jsonEncode(games);
    await prefs.setString(key, jsonString);
  }

  static Future<List<Map<String, dynamic>>> getGames() async {
    final prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString(key);
    if (jsonString == null) return [];
    List<dynamic> decoded = jsonDecode(jsonString);
    return List<Map<String, dynamic>>.from(decoded);
  }
}

// ------------------ BURAYA EKSİK OLAN WIDGET EKLENİYOR ------------------

class AddGameScreen extends StatefulWidget {
  const AddGameScreen({super.key});

  @override
  _AddGameScreenState createState() => _AddGameScreenState();
}

class _AddGameScreenState extends State<AddGameScreen> {
  final TextEditingController _gameController = TextEditingController();

  Future<void> _saveGame() async {
    String gameName = _gameController.text;
    if (gameName.isEmpty) return;

    List<Map<String, dynamic>> games = await SharedPrefsHelper.getGames();
    games.add({"name": gameName, "played": false});
    await SharedPrefsHelper.saveGames(games);

    Navigator.pop(context, true); // Önceki ekrana geri dön
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Oyun Ekle")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _gameController,
              decoration: const InputDecoration(labelText: "Oyun Adı"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _saveGame,
              child: const Text("Kaydet"),
            ),
          ],
        ),
      ),
    );
  }
}
