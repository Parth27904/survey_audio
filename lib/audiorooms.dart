import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:survey_audio/music_audio_room.dart';
import 'package:survey_audio/news_audio_room.dart';
import 'package:survey_audio/person_alaudio_room.dart';

class AudioRooms extends StatefulWidget {
  const AudioRooms({super.key});

  @override
  State<AudioRooms> createState() => _AudioRoomsState();
}

class _AudioRoomsState extends State<AudioRooms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/landing.png'), fit: BoxFit.fill)),
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.headphones_rounded,
                  size: 30,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Join an audio room",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              width: 350,
              height: 520,
              decoration: BoxDecoration(
                  color: HexColor("#253B4D"),
                  border: Border.all(),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalAudioRoom()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 30, 40, 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(200),
                                image: DecorationImage(
                                  scale: 2,
                                  image: AssetImage('assets/person.png',),
                                )
                            ),
                            width: 100,
                            height: 100,
                          ),
                          Text('Personal Space',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Divider(),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NewsAudioRoom()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 10, 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('News Discussions',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(200),
                              image: DecorationImage(
                                scale: 2,
                                image: AssetImage('assets/news.png',),
                              )
                            ),
                            width: 100,
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Divider(),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MusicAudioRoom()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 30, 30, 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(200),
                                image: DecorationImage(
                                  scale: 2.7,
                                  image: AssetImage('assets/music.png',),
                                )
                            ),
                            width: 100,
                            height: 100,
                          ),
                          Text('Music and Beats',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)
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
    );
  }
}
