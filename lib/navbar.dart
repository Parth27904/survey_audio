import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:survey_audio/audiorooms.dart';
import 'package:survey_audio/music_audio_room.dart';
import 'package:survey_audio/news_audio_room.dart';
import 'package:survey_audio/person_alaudio_room.dart';
import 'package:survey_audio/survey.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  String text = "";
  List<Widget> pages = [
    const Survey(),
    const AudioRooms(),
  ];

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white,size: 40),
          title: const Text(
            "Welcome",
            style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.w900),
          ),
          centerTitle: true,
          backgroundColor: HexColor("#253B4D"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 100,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: HexColor("#253B4D"),
                  ),
                  child: const Center(
                      child: Text(
                        'WELCOME!',
                        style: TextStyle(
                            fontSize:40,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      )),
                ),
              ),
              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.home),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Home'),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Personal Space'),
                  ],
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalAudioRoom()));
               },
              ),
              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.newspaper),
                    SizedBox(
                      width: 10,
                    ),
                    Text('News and Discussions'),
                  ],
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewsAudioRoom()));
                },
              ),
              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.music_note),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Music and Beats'),
                  ],
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MusicAudioRoom()));
                },
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: pages.elementAt(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: HexColor("#253B4D"),
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          onTap: (value){
            setState(() {
              _currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.check_box_outlined,size: 30),
                label: '',
                activeIcon: Icon(Icons.check_box,size: 30)),
            BottomNavigationBarItem(
                icon: Icon(Icons.headphones_outlined,size: 30),
                label: '',
                activeIcon: Icon(Icons.headphones_rounded,size: 30)),
          ],
        ),
      ),
    );
  }
}
