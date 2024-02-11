import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({super.key});

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Text("Audio Room",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),),
              SizedBox(height: 40,),
              Expanded( // Wrap SingleChildScrollView with Expanded
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: HexColor("#253B4D"), width: 10),
                              borderRadius: BorderRadius.circular(200),
                              image: const DecorationImage(
                                scale: 1,
                                image: AssetImage('assets/person.png',),
                              )
                          ),
                          width: 150,
                          height: 150,
                        ),
                        SizedBox(height: 20,),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: HexColor("#253B4D"), width: 10),
                              borderRadius: BorderRadius.circular(200),
                              image: const DecorationImage(
                                scale: 1,
                                image: AssetImage('assets/person2.jpg',),
                              )
                          ),
                          width: 150,
                          height: 150,
                        ),
                        SizedBox(height: 20,),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: HexColor("#253B4D"), width: 10),
                              borderRadius: BorderRadius.circular(200),
                              image: const DecorationImage(
                                scale: 1.5,
                                image: AssetImage('assets/person3.png',),
                              )
                          ),
                          width: 150,
                          height: 150,
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: HexColor("#253B4D"), width: 10),
                              borderRadius: BorderRadius.circular(200),
                              image: const DecorationImage(
                                scale: 1.5,
                                image: AssetImage('assets/person4.png',),
                              )
                          ),
                          width: 150,
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: HexColor("#253B4D"),
                        borderRadius: BorderRadius.circular(200),
                      ),
                      width: 80,
                      height: 80,
                      child: Icon(
                        Icons.headphones_rounded, color: Colors.white, size: 50,),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      decoration: BoxDecoration(
                        color: HexColor("#253B4D"),
                        borderRadius: BorderRadius.circular(200),
                      ),
                      width: 80,
                      height: 80,
                      child: Icon(Icons.mic, color: Colors.white, size: 50,),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      decoration: BoxDecoration(
                        color: HexColor("#253B4D"),
                        borderRadius: BorderRadius.circular(200),
                      ),
                      width: 80,
                      height: 80,
                      child: Icon(
                        Icons.videocam_rounded, color: Colors.white, size: 50,),
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