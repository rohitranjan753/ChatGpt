import 'package:chatgptbot/services/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final bool _isTyping = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ChatGPT"),
        elevation: 2,
        leading: Image.asset(AssetsManager.openaiLogo),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(itemCount: 6,itemBuilder: (context,index){
                return const Text("hELLO");
              },),
            ),
            if(_isTyping) ...[
              const SpinKitThreeBounce(
                color: Colors.white,
                size: 18,
              )
            ]
          ],
        ),
      )
    );
  }
}
