import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:survey_audio/audio_page.dart';

class PersonalAudioRoom extends StatefulWidget {
  const PersonalAudioRoom({super.key});

  @override
  State<PersonalAudioRoom> createState() => _PersonalAudioRoomState();
}

class _PersonalAudioRoomState extends State<PersonalAudioRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Personal Space",style: TextStyle(color: Colors.white),),
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
                        scale: 0.7,
                        image: AssetImage('assets/person.png',),
                      )
                  ),
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AudioPage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: HexColor("#253B4D"),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    height: 50,
                    width: 100,
                    child: Center(child: Text("Private",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: HexColor("#253B4D"),width: 10),
                      borderRadius: BorderRadius.circular(200),
                      image: const DecorationImage(
                        scale: 1,
                        image: AssetImage('assets/friends.png',),
                      )
                  ),
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AudioPage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: HexColor("#253B4D"),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    height: 50,
                    width: 100,
                    child: Center(child: Text("Friends",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: HexColor("#253B4D"),width: 10),
                      borderRadius: BorderRadius.circular(200),
                      image: const DecorationImage(
                        scale: 1,
                        image: AssetImage('assets/family.jpg',),
                      )
                  ),
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AudioPage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: HexColor("#253B4D"),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    height: 50,
                    width: 100,
                    child: const Center(child: Text("Family",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: HexColor("#253B4D"),width: 10),
                      borderRadius: BorderRadius.circular(200),
                      image: const DecorationImage(
                        scale: 1.5,
                        image: AssetImage('assets/work.jpg',),
                      )
                  ),
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AudioPage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: HexColor("#253B4D"),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    height: 50,
                    width: 100,
                    child: Center(child: Text("Work",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: HexColor("#253B4D"),width: 10),
                      borderRadius: BorderRadius.circular(200),
                      image: const DecorationImage(
                        scale: 1,
                        image: AssetImage('assets/chill.jpg',),
                      )
                  ),
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AudioPage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: HexColor("#253B4D"),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    height: 50,
                    width: 100,
                    child: Center(child: Text("Chill",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ),
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
