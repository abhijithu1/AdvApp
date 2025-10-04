import 'package:advapp/Contents/controllers/homecontroller.dart';
import 'package:advapp/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomFilter extends StatelessWidget {
  const BottomFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final _screenheight = MediaQuery.of(context).size.height;
    final _screenwidth = MediaQuery.of(context).size.width;

    HomeController homeController = Get.find();
    return BottomSheet(
      backgroundColor: AdvColors.bottomsheet,
      enableDrag: false,
      onClosing: () {},
      builder: (context) {
        final botheight = _screenheight * 0.18;
        return Container(
          height: botheight,
          child: Column(children: [
            Container(
              child: Center(
                child: Text(
                  "Select Class",
                  style: StyleText.font2.copyWith(fontSize: botheight * 0.15),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: _screenwidth * 0.03, vertical: botheight * 0.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(() => FilterChip(
                      color: homeController.filterselected[0] == true
                          ? MaterialStatePropertyAll(AdvColors.navyellow)
                          : null,
                      labelStyle: StyleText.font1,
                      selectedColor: AdvColors.navyellow,
                      label: Text(homeController.filters[0]),
                      onSelected: (bool ifselect) {
                        homeController.setfilter(0);
                        homeController.filterselected[1] == true
                            ? homeController.setfilter(1)
                            : null;
                        homeController.filterselected[2] == true
                            ? homeController.setfilter(2)
                            : null;
                        debugPrint(
                            "${homeController.filterselected[0].toString()}");
                      })),
                  Obx(() => FilterChip(
                      color: homeController.filterselected[1] == true
                          ? MaterialStatePropertyAll(AdvColors.navyellow)
                          : null,
                      labelStyle: StyleText.font1,
                      selectedColor: AdvColors.navyellow,
                      label: Text(homeController.filters[1]),
                      onSelected: (bool ifselect) {
                        homeController.setfilter(1);
                        homeController.filterselected[0] == true
                            ? homeController.setfilter(0)
                            : null;
                        homeController.filterselected[2] == true
                            ? homeController.setfilter(2)
                            : null;
                        debugPrint(
                            "${homeController.filterselected[1].toString()}");
                      })),
                  Obx(() => FilterChip(
                      color: homeController.filterselected[2] == true
                          ? MaterialStatePropertyAll(AdvColors.navyellow)
                          : null,
                      labelStyle: StyleText.font1,
                      selectedColor: AdvColors.navyellow,
                      label: Text(homeController.filters[2]),
                      onSelected: (bool ifselect) {
                        homeController.setfilter(2);
                        homeController.filterselected[1] == true
                            ? homeController.setfilter(1)
                            : null;
                        homeController.filterselected[0] == true
                            ? homeController.setfilter(0)
                            : null;
                        debugPrint(
                            "${homeController.filterselected[2].toString()}");
                      }))
                ],
              ),
            )
          ]),
        );
      },
    );
  }
}
