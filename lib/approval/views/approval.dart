import 'package:advapp/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ApprovalPage extends StatelessWidget {
  final int title;
  const ApprovalPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final _screenheight = MediaQuery.of(context).size.height;
    final _screenwidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            top: _screenheight * 0.0100227,
          ),
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
                toolbarHeight: _screenheight * 0.0900227,
                floating: true,
                pinned: true,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(
                    top: 6,
                  ),
                  child: Text(
                    "Approval - $title",
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
      ),
    );
  }
}
