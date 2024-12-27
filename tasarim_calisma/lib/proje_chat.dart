import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:tasarim_calisma/proje_renkler.dart';

class TarimBilChatPage extends StatefulWidget {
  @override
  _TarimBilChatPageState createState() => _TarimBilChatPageState();
}

class _TarimBilChatPageState extends State<TarimBilChatPage> {
  final TextEditingController _messageController = TextEditingController();
  final List<String> _messages = [];

  void _sendMessage() {
    if (_messageController.text.isNotEmpty) {
      setState(() {
        _messages.add(_messageController.text);
        _messageController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Arka plan resmi
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("resimler/Photo & Art Print Crop, Zoran Zeremski.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Blur efekti
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
            child: Container(
              color: Colors.black.withOpacity(0.2),
            ),
          ),
          // İçerik
          SafeArea(
            child: Column(
              children: [
                // Başlık
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "TarımBil",
                    style: TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 36,
                      color: yazi_renk1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                // Sohbet alanı
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: ana_renk.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListView.builder(
                      itemCount: _messages.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(_messages[index]),
                        );
                      },
                    ),
                  ),
                ),
                // Mesaj gönderme alanı
                Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.black.withOpacity(0.7),
                  child: Row(
                    children: [
                      // Mesaj yazma alanı
                      Expanded(
                        child: TextField(
                          controller: _messageController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: "Mesajınızı yazın...",
                            hintStyle: TextStyle(color: Colors.white70),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      // Mesaj gönderme butonu
                      IconButton(
                        icon: Icon(Icons.send, color: Colors.white),
                        onPressed: _sendMessage,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}