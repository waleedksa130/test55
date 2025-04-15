import 'package:flutter/material.dart';
import 'package:test122/applocal/applocal.dart';

class NextPage extends StatelessWidget {
  final String name;

  const NextPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${getLang(context, "next_page")}"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Text(
              "${getLang(context, "name")}: $name",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 100),
            Align(
              alignment: Alignment.bottomLeft,
              child: ElevatedButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
                label: Text(getLang(context, "back")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
