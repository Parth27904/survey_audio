import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Survey extends StatefulWidget {
  const Survey({Key? key}) : super(key: key);

  @override
  State<Survey> createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  int selectedOption1 = 0;
  int selectedOption2 = 0;
  int selectedOption3 = 0;
  int selectedOption4 = 0;
  int selectedOption5 = 0;
  int selectedOption6 = 0;

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
              height: 25,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      image: const DecorationImage(
                          image: AssetImage('assets/user.png')),
                      borderRadius: BorderRadius.circular(100)),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "USERNAME",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text(
                        'How many times have you visited our website in the past month?',
                        style: TextStyle(
                            fontSize: 22,
                            color: HexColor("#253B4D"),
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                            color: HexColor("#253B4D"),
                            border: Border.all(),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(40),
                                bottomLeft: Radius.circular(40))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ListTile(
                              title: const Text(
                                'Never',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 1,
                                groupValue: selectedOption1,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption1 = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                'Once',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 2,
                                groupValue: selectedOption1,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption1 = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                'More than once',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 3,
                                groupValue: selectedOption1,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption1 = value!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 25,),
                       Text(
                        'Are you able to find what you are looking for on the website homepage?',
                        style: TextStyle(
                            fontSize: 22,
                            color: HexColor("#253B4D"),
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                            color: HexColor("#253B4D"),
                            border: Border.all(),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(40),
                                bottomLeft: Radius.circular(40))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ListTile(
                              title: const Text(
                                'Yes',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 1,
                                groupValue: selectedOption2,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption2 = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                'No',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 2,
                                groupValue: selectedOption2,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption2 = value!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 25,),
                      Text(
                        'How did you come to know about our website?',
                        style: TextStyle(
                            fontSize: 22,
                            color: HexColor("#253B4D"),
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                            color: HexColor("#253B4D"),
                            border: Border.all(),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(40),
                                bottomLeft: Radius.circular(40))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ListTile(
                              title: const Text(
                                'Friends',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 1,
                                groupValue: selectedOption3,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption3 = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                'Family',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 2,
                                groupValue: selectedOption3,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption3 = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                'Newspaper',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 3,
                                groupValue: selectedOption3,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption3 = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                'Internet',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 4,
                                groupValue: selectedOption3,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption3 = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                'YouTube',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 5,
                                groupValue: selectedOption3,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption3 = value!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25,),
                      Text(
                        'Please select your age group from the provided options.',
                        style: TextStyle(
                            fontSize: 22,
                            color: HexColor("#253B4D"),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                            color: HexColor("#253B4D"),
                            border: Border.all(),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                bottomLeft: Radius.circular(40))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ListTile(
                              title: const Text(
                                'Below 18',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 1,
                                groupValue: selectedOption4,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption4 = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                '18-50',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 2,
                                groupValue: selectedOption4,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption4 = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                'Above 50',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 3,
                                groupValue: selectedOption4,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption4 = value!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25,),
                      Text(
                        'How would you rate our website\'s user interface?',
                        style: TextStyle(
                            fontSize: 22,
                            color: HexColor("#253B4D"),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                            color: HexColor("#253B4D"),
                            border: Border.all(),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                bottomLeft: Radius.circular(40))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ListTile(
                              title: const Text(
                                'Needs Improvement',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 1,
                                groupValue: selectedOption5,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption5 = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                'Below Average',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 2,
                                groupValue: selectedOption5,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption5 = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                'Average',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 3,
                                groupValue: selectedOption5,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption5 = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                'Good',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 4,
                                groupValue: selectedOption5,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption5 = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                'Excellent',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 5,
                                groupValue: selectedOption5,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption5 = value!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25,),
                      Text(
                        'How would you rate your overall experience?',
                        style: TextStyle(
                            fontSize: 22,
                            color: HexColor("#253B4D"),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                            color: HexColor("#253B4D"),
                            border: Border.all(),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                bottomLeft: Radius.circular(40))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ListTile(
                              title: const Text(
                                'Poor',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 1,
                                groupValue: selectedOption6,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption6 = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                'Below Average',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 2,
                                groupValue: selectedOption6,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption6 = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                'Average',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 3,
                                groupValue: selectedOption6,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption6 = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                'Good',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 4,
                                groupValue: selectedOption6,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption6 = value!;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                'Excellent',
                                style: TextStyle(color: Colors.white,fontSize : 20),
                              ),
                              leading: Radio(
                                value: 5,
                                groupValue: selectedOption6,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption6 = value!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: (){
                              if(selectedOption1 == 0 || selectedOption2 == 0 || selectedOption3 == 0 || selectedOption4 == 0 || selectedOption5 == 0 || selectedOption6 == 0) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Please complete the survey")
                                    ));
                              }
                              else{
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text("Survey Submitted Successfully")
                                    ));
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10),
                                color: HexColor("#253B4D")
                              ),
                              child:
                                Text("Submit Survey",style: TextStyle(color: Colors.white,fontSize: 20),)
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}