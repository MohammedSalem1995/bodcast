
import 'package:flutter/material.dart';
import 'package:todo_ui/dumy_data/writers.dart';
import 'package:todo_ui/modules/subject_module.dart';

List<Subject> subjects=[
  Subject("Financial Freedom",
    "Financial freedom usually means having enough savings, financial investments, and cash on hand to afford the kind of life we desire for ourselves and our families. It means growing savings that enable us to retire or pursue the career we want without being driven by earning a set salary each year. Financial freedom means our money is working for us rather than the other way around. ",
    Image.asset("assets/images/FiFree.jpg",fit: BoxFit.cover,),
    writers[0]
  ),
  Subject("Minimal lifestyle",
      "The true essence of a minimalist lifestyle is determining what provides us the most value in life and removing everything that is simply excess. It works on the concept that less is more. Minimalist living is about intention. You make room and time in your life for the things you love and eliminate everything that distracts you from them.",
      Image.asset("assets/images/mlifestyle.jpg",fit: BoxFit.cover,),
      writers[2]
  ),
  Subject("Bisnis Strategy",
      "A business strategy is a powerful tool for helping you reach your business goals, defining the methods and tactics you need to take within your company. The business strategy also guides many of your organizational decisions, such as hiring new employees. ",
      Image.asset("assets/images/bistra.jpg",fit: BoxFit.cover,),
      writers[6]
  ),
];
