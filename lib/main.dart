import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.message),
          backgroundColor: const Color(0xff006257),
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 500,
                  height: 150,
                  decoration:
                      const BoxDecoration(color: Color(0xff006257), boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 20,
                    )
                  ]),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "WhatsApp",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 95,
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Icon(
                                Icons.message,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'CALLS',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.grey,
                                    fontSize: 16),
                              ),
                              Text(
                                "CHATS",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                    fontSize: 16),
                              ),
                              Text(
                                "CONTACTS",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.grey,
                                    fontSize: 16),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 110,
                  child: Container(
                    width: 110,
                    height: 3,
                    color: const Color(0xffEEEEEE),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                    title: const Text(
                      "Muhammad Faisal",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    subtitle: Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.grey,
                          size: 16,
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Text(
                          "Hello Buddy",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    trailing: const Text(
                      "2:18 PM",
                      style: TextStyle(color: Colors.grey),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
