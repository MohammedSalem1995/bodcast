import 'package:flutter/material.dart';
import 'package:todo_ui/modules/writerModule.dart';

class Subject{
  Image image;
  String title;
  String subtitle;
  Writer writer;
  Subject(this.title,this.subtitle,this.image,this.writer);
}