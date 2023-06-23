import 'package:flutter/material.dart';
import 'package:haindi_graph/feature/screens/products/products_details_screen.dart';
import 'package:haindi_graph/feature/screens/search/search_screen.dart';

class HomeProductScreen extends StatefulWidget {
  const HomeProductScreen({Key? key}) : super(key: key);

  @override
  State<HomeProductScreen> createState() => _HomeProductScreenState();
}

class _HomeProductScreenState extends State<HomeProductScreen> {
  List lists = [
    {
      'name': 'ram',
      'image':
          'https://cpimg.tistatic.com/03447145/b/4/Wooden-Handicrafts-Elephant.jpeg',
      'pay': '222'
    },
    {
      'name': 'dfg',
      'image': 'https://tinypng.com/images/social/website.jpg',
      'pay': '22'
    },
    {
      'name': 'dgd',
      'image': 'https://www.imgonline.com.ua/examples/bee-on-daisy.jpg',
      'pay': '322'
    },
    {
      'name': 'rafggm',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg',
      'pay': '2322'
    },
    {
      'name': 'ram',
      'image':
          'https://cpimg.tistatic.com/03447145/b/4/Wooden-Handicrafts-Elephant.jpeg',
      'pay': '222'
    },
    {
      'name': 'dfg',
      'image': 'https://tinypng.com/images/social/website.jpg',
      'pay': '22'
    },
    {
      'name': 'dgd',
      'image': 'https://www.imgonline.com.ua/examples/bee-on-daisy.jpg',
      'pay': '322'
    },
    {
      'name': 'rafggm',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg',
      'pay': '2322'
    },
    {
      'name': 'dgd',
      'image': 'https://www.imgonline.com.ua/examples/bee-on-daisy.jpg',
      'pay': '322'
    },
    {
      'name': 'rafggm',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg',
      'pay': '2322'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {},
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
        height: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.grey),
          color: const Color(0x7cdee5e5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              const SearchScreen(),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 22),
                        child: GridView.builder(
                          itemCount: lists.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 11,
                            mainAxisSpacing: 11,
                          ),
                          itemBuilder: (context, index) {
                            return ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                              child: Container(
                                decoration:
                                    const BoxDecoration(color: Colors.amber),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ProductDetailsScreen(),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Image.network(
                                          lists[index]['image'],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        color: const Color.fromARGB(
                                            255, 43, 95, 45),
                                        height: 30,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              lists[index]['name'],
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  lists[index]['pay'],
                                                  style: const TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
