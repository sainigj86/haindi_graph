import 'package:flutter/material.dart';
import 'package:haindi_graph/screens/search/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                // Handle menu button pressed
              },
            ),
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/Gajendra.jpg'),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: .5, color: Colors.grey),
          color: const Color(0x7cdee5e5),
        ),
        child: const Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SearchScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
