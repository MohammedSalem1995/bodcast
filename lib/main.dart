import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_ui/dumy_data/writers.dart';
import 'package:todo_ui/ui/pages/main_page.dart';
import 'package:todo_ui/ui/pages/subject_page.dart';
import 'package:todo_ui/ui/widget/evaluation_iteam.dart';
import 'package:todo_ui/ui/widget/subject_iteam.dart';
import 'package:todo_ui/ui/widget/writer_iteam.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dumy_data/subjects.dart';
import 'modules/evaluate_module.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: Size(360, 592),
      minTextAdapt: true,
      builder: () => MaterialApp(
        home: MainPage(),
      ),
    ),
  );
}

