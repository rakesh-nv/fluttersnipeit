import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageviewWidget extends StatefulWidget {
  const PageviewWidget({super.key});

  @override
  State<PageviewWidget> createState() => _PageviewWidgetState();
}

class _PageviewWidgetState extends State<PageviewWidget> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: [
            Container(
              height: 30,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "1",
                  style: TextStyle(fontSize: 100),
                ),
              ),
            ),
            Container(
              height: 30,
              color: Colors.orange,
              child: const Center(
                child: Text(
                  "2",
                  style: TextStyle(fontSize: 100),
                ),
              ),
            ),
            Container(
              height: 30,
              color: Colors.orange,
              child: const Center(
                child: Text(
                  "3",
                  style: TextStyle(fontSize: 100),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
