import 'dart:ffi';

import 'package:advapp/Contents/views/body1.dart';
import 'package:advapp/Contents/views/body2.dart';
import 'package:advapp/Contents/views/body3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final List<String> titles = ["Approvals", "Students", "Internships"];
  var selectedpage = 0.obs;
  void setindex(index) {
    selectedpage.value = index;
    update();
  }

  final List<String> filters = ["All", "T4A", "T4B"];
  final List<bool> filterselected = [true, false, false].obs;
  void setfilter(int index) {
    filterselected[index] = !filterselected[index];
  }
}
