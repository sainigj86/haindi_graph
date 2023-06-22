import 'package:flutter/material.dart';
import 'package:haindi_graph/constants/global_variables.dart';
import 'package:haindi_graph/screens/bottom_navigation_bar_screens/home_product_screen.dart';
import 'package:haindi_graph/screens/search/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  Widget buildCircularImage(String imageUrl) {
    return Container(
      width: 60,
      height: 60,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      child: ClipOval(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

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
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeProductScreen(),
                            ),
                          );
                        },
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
                                      const BoxDecoration(color: Colors.white),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Image.network(
                                          lists[index]['image'],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        color: GlobalVariables.greendarkColor,
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
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 34, 84, 36),
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 30, 80, 32),
                            spreadRadius: .4,
                            blurRadius: .4,
                            offset: Offset(0, .4),
                          )
                        ],
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildCircularImage(
                                'https://cpimg.tistatic.com/03447145/b/4/Wooden-Handicrafts-Elephant.jpeg'),
                            buildCircularImage(
                                'https://5.imimg.com/data5/TC/DE/MY-20031763/handicarft-itme-1000x1000.jpeg'),
                            buildCircularImage(
                                'https://m.media-amazon.com/images/I/61UQu6t2JaL._SL1500_.jpg'),
                            buildCircularImage(
                                'https://i.etsystatic.com/34592816/r/il/ace084/3856116303/il_794xN.3856116303_99sd.jpg'),
                            buildCircularImage(
                                'https://www.ulcdn.net/images/products/399704/slide/666x363/Daisy_Figurine_Multicolour_2.jpg?1632826902'),
                          ],
                        ),
                      ),
                    )
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
