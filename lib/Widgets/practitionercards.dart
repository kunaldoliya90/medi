import 'package:flutter/material.dart';

class PractitionerCard extends StatelessWidget {
  final String PractitionerName;
  final String Specialisation;
  final String PractitionerImage;
  const PractitionerCard({
    super.key,
    required this.PractitionerName,
    required this.Specialisation,
    required this.PractitionerImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(PractitionerImage),
                radius: 35,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                PractitionerName,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(Specialisation),
            ],
          ),
          SizedBox(
            width: 30,
          )
        ],
      ),
    );
  }
}
