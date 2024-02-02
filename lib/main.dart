import 'package:flutter/material.dart';
import 'package:whatsapp/story.dart';

import 'chat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Whatsapp(),
    );
  }
}

class Whatsapp extends StatefulWidget {
  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  Color mainColor = Color(0xFF177767);
  var containerRadius = Radius.circular(30.0);
  List<String> imageUrl = [
    "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8QM_JcxgSky-lk4Z2Q7wVblRt1HvwBT_IDHX8X5sx7XH0nfoob8sUGvS0sDMvuqDX4zA&usqp=CAU",
    "https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsGAJgU6suKZeLugixtVxMbv05RlywbGNRGQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkwKHm5TU45_0o_sgml_CUVuiNHcGNd-h5dA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR3svOak5T9vF9eEWIVLBCt4xcotIPuJXDyQO7xgdy7Q&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAATfbcwSXTewyAiJc99NOe1xxAxnvoTA7Jg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw-ongYfd0DEt9LwuelPxZESoYNTS89cV3Yg&usqp=CAU",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text("WhatsApp ",),titleTextStyle: TextStyle(color: Colors.white,fontSize: 20),
        backgroundColor: mainColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search,color: Colors.white,size: 22,),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_outlined,color: Colors.white,size: 20,),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert,color: Colors.white,size: 20,),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100.0,
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storyButton(imageUrl[0], "annu"),
                  storyButton(imageUrl[1], "akhilesh"),
                  storyButton(imageUrl[2], "vishnu"),
                  storyButton(imageUrl[3], "chechi"),
                  storyButton(imageUrl[4], "mom"),
                  storyButton(imageUrl[5], "arun"),
                  storyButton(imageUrl[6], "chetten"),
                ],
              ),
            ),
          ),

          //Now let's create our chat timeline
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: containerRadius, topRight: containerRadius),
              ),
              child: Padding(
                padding:
                const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
                child: ListView(
                  children: [
                    //Now let's create our chat tile custom widget
                    chatTile(imageUrl[0], "annu", "msg", "9:15am", false),
                    chatTile(imageUrl[1], "akhilesh", "msg", "4:02pm", true),
                    chatTile(imageUrl[2], "vishnu", "msg", "8:17pm", true),
                    chatTile(imageUrl[3], "chechi", "msg", "Yesterday,", true),
                    chatTile(imageUrl[5], "mom", "msg", "Yesterday", true),
                    chatTile(imageUrl[4], "arun", "msg", "thursday 17", true),
                    chatTile(imageUrl[6], "chetten", "msg", "Saturday19", true),
                    chatTile(imageUrl[7], "bro", "msg", "sunday20", true),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}