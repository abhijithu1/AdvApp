import 'package:advapp/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudentView extends StatelessWidget {
  const StudentView({super.key});

  @override
  Widget build(BuildContext context) {
    final _screenheight = MediaQuery.of(context).size.height;
    final _screenwidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: Container(
        child: Padding(
          padding: EdgeInsets.only(
              top: 10.0,
              left: _screenwidth * 0.04843318,
              right: _screenwidth * 0.04843318),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                leading: GestureDetector(
                  onTap: () => Get.back(),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: _screenheight * 0.03,
                  ),
                ),
                centerTitle: true,
                toolbarHeight: _screenheight * 0.1144227,
                floating: true,
                pinned: true,
                elevation: 3,
                title: Padding(
                  padding: const EdgeInsets.only(
                    top: 6,
                  ),
                  child: Text(
                    "John Snow",
                    style: StyleText.font2.copyWith(
                      fontSize: _screenheight * 0.0340543,
                    ),
                  ),
                ),
                automaticallyImplyLeading: false,
              )
            ],
          ),
        ),
      )),
    );
  }
}
