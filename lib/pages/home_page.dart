import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _listItem = [
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.png',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.png',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text(
            'Apple Products',
            style: TextStyle(
              color: Colors.white,
            ),
        ),
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child:  Container(
            width: 36,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                '7',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/images/image_4.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.3),
                      Colors.black.withOpacity(.01),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Lifestyle sale",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text("Shop Now"),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                itemCount: _listItem.length,
                itemBuilder: (context, index) {
                  return cellOfList(_listItem[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cellOfList(String item) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: 360,
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
