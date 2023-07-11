import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Row(
          children: [
            Column(
              children: [Text("test"), Text("test")],
            ),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
