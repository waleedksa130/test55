import 'package:flutter/material.dart';
import 'package:test122/applocal/applocal.dart';
import 'nextpage.dart';
import 'dart:io';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${getLang(context, "home_page")}"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [


            const SizedBox(height: 30),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: getLang(context, "your_name"),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (nameController.text.trim().isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              NextPage(name: nameController.text),
                        ),
                      );
                    }
                  },
                  child: Text(getLang(context, "next")),
                ),
                ElevatedButton(
                  onPressed: () {
                    exit(0); // للخروج من التطبيق
                  },
                  child: Text(getLang(context, "close")),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
