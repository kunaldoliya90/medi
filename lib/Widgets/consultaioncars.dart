import 'package:flutter/material.dart';

class ConsultationCard extends StatelessWidget {
  final String name;
  final String time;
  final String PatientImage;
  // final String color;
  const ConsultationCard({super.key, required this.name, required this.time, required this.PatientImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          // color: Colors.black,
          height: MediaQuery.of(context).size.height / 3.6,
          width: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 14.0,
                spreadRadius: 0.5,
              ),
            ],
            color: Color.fromARGB(255, 223, 251, 184),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(PatientImage),
                      backgroundColor: Colors.black,
                      radius: 25,
                    ),
                    Column(
                      children: [
                        Text(
                          name,
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(time, style: TextStyle(color: Colors.black))
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.resolveWith(
                        (Set<MaterialState> states) {
                      return RoundedRectangleBorder(
                        
                        borderRadius: BorderRadius.circular(20.0),
                      );
                    }),
                  ),
                  onPressed: () {},
                  child: Text("Join the Call"),
                ),
              ),
              SizedBox(width: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
