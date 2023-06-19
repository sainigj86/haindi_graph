import 'package:flutter/material.dart';
import 'package:haindi_graph/common/custom_textfield.dart';

class TopScreen extends StatefulWidget {
  const TopScreen({super.key});

  @override
  State<TopScreen> createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 30.0,
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(width: .5, color: Colors.grey),
            color: const Color(0x7cdee5e5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(9),
            child: Column(
              children: [
                CustomTextField(
                  controller: _searchController,
                  hintText: 'Search Product',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
