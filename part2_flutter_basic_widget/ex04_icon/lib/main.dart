import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        children: const [
          Icon(
            Icons.account_circle,
            color: Colors.red,
            size: 35.0,
          ),
          Icon(
            Icons.add_a_photo,
            color: Colors.orange,
            size: 35.0,
          ),
          Icon(
            Icons.add_a_photo_outlined,
            color: Colors.yellow,
            size: 35.0,
          ),
          Icon(
            Icons.add_circle,
            color: Colors.green,
            size: 35.0,
          ),
          Icon(
            Icons.add_circle_outline,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.add_comment,
            color: Color(0xffb74093),
            size: 35.0,
          ),
          Icon(
            Icons.add_comment_outlined,
            color: Colors.purple,
            size: 35.0,
          ),
          Icon(
            Icons.add_shopping_cart,
            color: Color(0xff000000),
            size: 35.0,
          ),
          Icon(
            Icons.remove_shopping_cart ,
            color: Color(0xFF00008B),
            size: 35.0,
          ),
          Icon(
            Icons.camera_alt,
            color: Colors.red,
            size: 35.0,
          ),
          Icon(
            Icons.cancel,
            color: Colors.orange,
            size: 35.0,
          ),
           Icon(
            Icons.add_circle_outlined,
            color: Colors.yellow,
            size: 35.0,
          ),
          Icon(
            Icons.shop_rounded,
            color: Colors.green,
            size: 35.0,
          ),
          Icon(
            Icons.done_rounded,
            color: Colors.black,
            size: 35.0,
          ),
          Icon(
            Icons.restore,
            color: Colors.black,
            size: 35.0,
          ),
          Icon(
            Icons.restore_page,
            color: Colors.black,
            size: 35.0,
          ),
          Icon(
            Icons.reviews,
            color: Colors.brown,
            size: 35.0,
          ),
           Icon(
            Icons.ring_volume,
            color: Colors.green,
            size: 35.0,
          ),
          Icon(
            Icons.room_rounded,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.rss_feed,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.save_alt,
            color: Colors.black,
            size: 35.0,
          ),
          Icon(
            Icons.fingerprint,
            color: Colors.black,
            size: 35.0,
          ),
          Icon(
            Icons.add_call,
            color: Colors.black,
            size: 35.0,
          ),
          Icon(
            Icons.calculate,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.calendar_today,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.thumb_up,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.thumb_up_off_alt,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.thumb_up_off_alt,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.toggle_off,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.toggle_on,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.train,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.train_outlined,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.transfer_within_a_station ,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.video_call,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.video_call_outlined,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.video_camera_front,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.video_camera_front_outlined,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.videocam,
            color: Colors.blue,
            size: 35.0,
          ), 
          Icon(
            Icons.videocam_off_outlined,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.volume_up,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.volume_off_sharp,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.warning,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.watch_later,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.west,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.zoom_in,
            color: Colors.blue,
            size: 35.0,
          ),
          Icon(
            Icons.zoom_out,
            color: Colors.blue,
            size: 35.0,
          ),
        ],
      ),
    );
  }
}
