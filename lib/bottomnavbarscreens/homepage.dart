// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:medicalapp/Widgets/consultaioncars.dart';
import 'package:medicalapp/Widgets/practitionercards.dart';
import 'package:medicalapp/Widgets/titlebar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/doctorsimage/kunal.jpg"),
                          radius: 26,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Welcome Back,",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Kunal",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                      ],
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.menu))
                  ],
                ),
              ),
              Titlebar(title: "Upcoming Consultations"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ConsultationCard(
                      PatientImage: "assets/doctorsimage/kunal2.jpg",
                      time: "Time: 08:45 AM",
                      name: "Sanidhya",
                    ),
                    ConsultationCard(
                      PatientImage: "assets/doctorsimage/kunal2.jpg",
                      time: "Time: 09:30 AM",
                      name: "Varun",
                    ),
                    ConsultationCard(
                      PatientImage: "assets/doctorsimage/kunal2.jpg",
                      time: "Time: 10:15 AM",
                      name: "Manaswitha",
                    ),
                    ConsultationCard(
                      PatientImage: "assets/doctorsimage/kunal2.jpg",
                      time: "Time: 11:00 AM",
                      name: "Shyamm",
                    ),
                    ConsultationCard(
                      PatientImage: "assets/doctorsimage/kunal2.jpg",
                      time: "Time: 11:45 AM",
                      name: "Vishal",
                    ),
                    ConsultationCard(
                      PatientImage: "assets/doctorsimage/kunal2.jpg",
                      time: "Time: 01:30 PM",
                      name: "Riya",
                    ),
                    ConsultationCard(
                      PatientImage: "assets/doctorsimage/kunal2.jpg",
                      time: "Time: 02:15 PM",
                      name: "Prateek",
                    ),
                    ConsultationCard(
                      PatientImage: "assets/doctorsimage/kunal2.jpg",
                      time: "Time: 03:00 PM",
                      name: "Akshata",
                    ),
                  ],
                ),
              ),
              Titlebar(title: "Practitioner Profiles"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    PractitionerCard(
                        PractitionerImage: "assets/doctorsimage/hemant.jpg",
                        PractitionerName: "Dr. Hemant ",
                        Specialisation: "Cardiologist"),
                    PractitionerCard(
                        PractitionerImage: "assets/doctorsimage/himalaya.jpg",
                        PractitionerName: "Dr. Himalaya",
                        Specialisation: "PanchaKarma"),
                    PractitionerCard(
                        PractitionerImage: "assets/doctorsimage/kunal2.jpg",
                        PractitionerName: "Dr. Chaitanya ",
                        Specialisation: "Psychologist"),
                    PractitionerCard(
                        PractitionerImage: "assets/doctorsimage/kunal2.jpg",
                        PractitionerName: "Dr. Subhash",
                        Specialisation: "Gynaecologist"),
                    PractitionerCard(
                        PractitionerImage: "assets/doctorsimage/kunal2.jpg",
                        PractitionerName: "Dr. Balram",
                        Specialisation: "Eyes"),
                    PractitionerCard(
                        PractitionerImage: "assets/doctorsimage/kunal2.jpg",
                        PractitionerName: "Dr. Piyush",
                        Specialisation: "Orthopedic"),
                  ],
                ),
              ),
              Titlebar(title: "Your Health Information"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Fitness",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Certificate",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      width: MediaQuery.of(context).size.width / 2.3,
                      height: MediaQuery.of(context).size.height / 4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Color.fromARGB(255, 231, 255, 199),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 4,
                                blurRadius: 12)
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "BMI",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      width: MediaQuery.of(context).size.width / 2.3,
                      height: MediaQuery.of(context).size.height / 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Color.fromARGB(255, 231, 255, 199),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 4,
                              blurRadius: 12)
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
