import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:survey_audio/navbar.dart';
import 'package:survey_audio/survey.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/blank.gif'),
            fit: BoxFit.fill
          )
        ),
        child: Column(
          children: [
            const SizedBox(height: 750,),
            GestureDetector(
              onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> NavBar()));},
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(55),
                    color: HexColor("#253B4D")
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DefaultTextStyle(
                      style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),
                      child: Text("LETS GET STARTED"),
                    ),
                    Icon(Icons.arrow_forward,color: Colors.white,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
