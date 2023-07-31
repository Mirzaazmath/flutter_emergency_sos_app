import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// Cause class
class Cause {
  final String title;
  final IconData icon;
  Cause({required this.title,required this.icon});

}
//  -/Cause class


// Cause list
final List<Cause>causelist=[
  Cause(title: "I had an accident", icon: Icons.personal_injury_outlined),
  Cause(title: "I have an injury", icon: Icons.assist_walker_outlined),
  Cause(title: "I'm feeling sick", icon: Icons.sick_outlined),

];
// -/Cause list