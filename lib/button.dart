import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
        backgroundColor: const Color.fromARGB(255, 148, 216, 31),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                foregroundColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 165, 12, 48),
                ),
                overlayColor: MaterialStateProperty.all(Colors.red),
                backgroundColor: MaterialStateProperty.all(Colors.green),
                elevation: MaterialStateProperty.all(20),
              ),
              child: Text("Text Me"),
              onPressed: () {},
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                onPressed: () {
                  print("Elevated Button Pressed");
                },
                child: const Text("Eelevated Button"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
