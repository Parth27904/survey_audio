import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NewsAudioRoom extends StatefulWidget {
  const NewsAudioRoom({super.key});

  @override
  State<NewsAudioRoom> createState() => _NewsAudioRoomState();
}

class _NewsAudioRoomState extends State<NewsAudioRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("News Discussions",style: TextStyle(color: Colors.white),),
        backgroundColor: HexColor("#253B4D"),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: HexColor("#253B4D"),width: 10),
                      borderRadius: BorderRadius.circular(200),
                      image: const DecorationImage(
                        scale: 1,
                        image: AssetImage('assets/political.jpg',),
                      )
                  ),
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: HexColor("#253B4D"),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  height: 50,
                  width: 150,
                  child: Center(child: Text("Political News",style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: HexColor("#253B4D"),width: 10),
                      borderRadius: BorderRadius.circular(200),
                      image: const DecorationImage(
                        scale: 1,
                        image: AssetImage('assets/sport.jpg',),
                      )
                  ),
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: HexColor("#253B4D"),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  height: 50,
                  width: 150,
                  child: Center(child: Text("Sports News",style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: HexColor("#253B4D"),width: 10),
                      borderRadius: BorderRadius.circular(200),
                      image: const DecorationImage(
                        scale: 1,
                        image: AssetImage('assets/finance.jpg',),
                      )
                  ),
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: HexColor("#253B4D"),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  height: 50,
                  width: 150,
                  child: const Center(child: Text("Finance News",style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: HexColor("#253B4D"),width: 10),
                      borderRadius: BorderRadius.circular(200),
                      image: const DecorationImage(
                        scale: 1,
                        image: AssetImage('assets/crime.png',),
                      )
                  ),
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: HexColor("#253B4D"),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  height: 50,
                  width: 150,
                  child: Center(child: Text("Criminal News",style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: HexColor("#253B4D"),width: 10),
                      borderRadius: BorderRadius.circular(200),
                      image: const DecorationImage(
                        scale: 1,
                        image: AssetImage('assets/current.png',),
                      )
                  ),
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: HexColor("#253B4D"),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  height: 50,
                  width: 150,
                  child: Center(child: Text("Current Affairs",style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

