import 'package:flutter/material.dart';
import 'shared_prefs_helper.dart';
import 'add_game_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> games = [];

  @override
  void initState() {
    super.initState();
    loadGames();
  }

  void loadGames() async {
    List<Map<String, dynamic>> loadedGames = await SharedPrefsHelper.getGames();
    setState(() {
      games = loadedGames;
    });
  }

  void togglePlayed(int index) async {
    setState(() {
      games[index]['played'] = !games[index]['played'];
    });
    await SharedPrefsHelper.saveGames(games);
  }

  void addGame(String title, String note) async {
    setState(() {
      games.add({"title": title, "note": note, "played": false});
    });
    await SharedPrefsHelper.saveGames(games);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Oyun Takibi")),
      body: ListView.builder(
        itemCount: games.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(games[index]['title']),
            subtitle: Text(games[index]['note']),
            trailing: Checkbox(
              value: games[index]['played'],
              onChanged: (value) => togglePlayed(index),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddGameScreen()),
          );
          if (result != null) {
            addGame(result['title'], result['note']);
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}