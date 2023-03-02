import 'package:flutter/material.dart';
import 'package:sport_app/PresentaionLayer/Player/widgets/horizontal_bar.dart';
import 'package:sport_app/PresentaionLayer/Player/widgets/players_list.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          'Football Players',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            HorizontalBar(),
            SizedBox(
              height: 20.0,
            ),
            PlayersList(),
          ],
        ),
      ),
    );
  }
}
