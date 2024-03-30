import 'package:advapp/Contents/controllers/homecontroller.dart';
import 'package:advapp/Contents/views/body1.dart';
import 'package:advapp/Contents/views/body2.dart';
import 'package:advapp/Contents/views/body3.dart';
import 'package:advapp/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final pg = PageController();
    final _screenheight = MediaQuery.of(context).size.height;
    final _screenwidth = MediaQuery.of(context).size.width;
    HomeController controller = Get.put(HomeController());

    return Scaffold(
      bottomNavigationBar: Container(
        // margin: EdgeInsets.zero,
        height: _screenheight * 0.084518,
        decoration: BoxDecoration(
          color: AdvColors.loginfield,
        ),
        child: BottomNavigationBar(
            currentIndex: controller.selectedpage.toInt(),
            elevation: 0,
            landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
            onTap: (index) {
              controller.setindex(index);
              pg.animateToPage(index,
                  duration: Duration(milliseconds: 400),
                  curve: Curves.easeInOutSine);
              // debugPrint("Index number $index");
            },
            selectedItemColor: AdvColors.navyellow,
            unselectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            backgroundColor: AdvColors.loginfield,
            items: [
              BottomNavigationBarItem(
                label: '',
                icon: Obx(() => CircleAvatar(
                      backgroundColor: controller.selectedpage.value == 0
                          ? AdvColors.navyellow
                          : Colors.white,
                      radius: _screenheight * 0.023,
                      // height: _screenheight * 0.039006,
                      // width: _screenwidth * 0.1616244,
                      child: FaIcon(
                        FontAwesomeIcons.squareCheck,
                        color: Colors.black,
                      ),
                    )),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Obx(() => CircleAvatar(
                      backgroundColor: controller.selectedpage.value == 1
                          ? AdvColors.navyellow
                          : Colors.white,
                      radius: _screenheight * 0.023,
                      // height: _screenheight * 0.039006,
                      // width: _screenwidth * 0.1616244,
                      child: FaIcon(
                        FontAwesomeIcons.peopleGroup,
                        color: Colors.black,
                      ),
                    )),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Obx(() => CircleAvatar(
                      backgroundColor: controller.selectedpage.value == 2
                          ? AdvColors.navyellow
                          : Colors.white,
                      radius: _screenheight * 0.023,
                      // height: _screenheight * 0.039006,
                      // width: _screenwidth * 0.1616244,
                      child: FaIcon(
                        FontAwesomeIcons.graduationCap,
                        color: Colors.black,
                      ),
                    )),
              )
            ]),
      ),
      body: Container(
        // height: _screenheight,
        // width: _screenwidth,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              top: _screenheight * 0.0100227,
              bottom: 0,
            ),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverAppBar(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  actions: [
                    Padding(
                      padding:
                          EdgeInsets.only(right: _screenwidth * 0.04843318),
                      child: Container(
                        height: _screenheight * 0.09399,
                        width: _screenwidth * 0.17193,
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://img.freepik.com/free-photo/indoor-shot-beautiful-happy-african-american-woman-smiling-cheerfully-keeping-her-arms-folded-relaxing-indoors-after-morning-lectures-university_273609-1270.jpg",
                          ),
                        ),
                      ),
                    ),
                  ],
                  toolbarHeight: _screenheight * 0.0900227,
                  floating: true,
                  pinned: true,
                  elevation: 0,
                  title: Padding(
                    padding: EdgeInsets.only(
                      top: _screenheight * 0.016,
                    ),
                    child: Obx(() => Text(
                          controller.titles[controller.selectedpage.value],
                          style: StyleText.font2.copyWith(
                            fontSize: _screenheight * 0.0340543,
                          ),
                        )),
                  ),
                  automaticallyImplyLeading: false,
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    // const SizedBox(height: 5),
                    Container(
                      height: _screenheight * 0.7948700485,
                      child: PageView(
                        controller: pg,
                        physics: const BouncingScrollPhysics(),
                        onPageChanged: (int index1) {
                          controller.setindex(index1);
                        },
                        children: [
                          ApprovalBody(
                            height: _screenheight,
                            width: _screenwidth,
                          ),
                          StudentsBody(),
                          InternShipsBody(),
                        ],
                      ),
                    ),
                    // Container(
                    //   margin: EdgeInsets.zero,
                    //   height: _screenheight * 0.094518,
                    //   decoration: BoxDecoration(
                    //     color: AdvColors.loginfield,
                    //   ),
                    //   child: BottomNavigationBar(
                    //       currentIndex: controller.selectedpage.toInt(),
                    //       elevation: 0,
                    //       landscapeLayout:
                    //           BottomNavigationBarLandscapeLayout.spread,
                    //       onTap: (index) {
                    //         controller.setindex(index);
                    //         pg.animateToPage(index,
                    //             duration: Duration(milliseconds: 400),
                    //             curve: Curves.easeInOutSine);
                    //         // debugPrint("Index number $index");
                    //       },
                    //       selectedItemColor: AdvColors.navyellow,
                    //       unselectedItemColor: Colors.black,
                    //       type: BottomNavigationBarType.fixed,
                    //       backgroundColor: AdvColors.loginfield,
                    //       items: [
                    //         BottomNavigationBarItem(
                    //           label: '',
                    //           icon: Obx(() => CircleAvatar(
                    //                 backgroundColor:
                    //                     controller.selectedpage.value == 0
                    //                         ? AdvColors.navyellow
                    //                         : Colors.white,
                    //                 radius: _screenheight * 0.023,
                    //                 // height: _screenheight * 0.039006,
                    //                 // width: _screenwidth * 0.1616244,
                    //                 child: FaIcon(
                    //                   FontAwesomeIcons.squareCheck,
                    //                   color: Colors.black,
                    //                 ),
                    //               )),
                    //         ),
                    //         BottomNavigationBarItem(
                    //           label: '',
                    //           icon: Obx(() => CircleAvatar(
                    //                 backgroundColor:
                    //                     controller.selectedpage.value == 1
                    //                         ? AdvColors.navyellow
                    //                         : Colors.white,
                    //                 radius: _screenheight * 0.023,
                    //                 // height: _screenheight * 0.039006,
                    //                 // width: _screenwidth * 0.1616244,
                    //                 child: FaIcon(
                    //                   FontAwesomeIcons.peopleGroup,
                    //                   color: Colors.black,
                    //                 ),
                    //               )),
                    //         ),
                    //         BottomNavigationBarItem(
                    //           label: '',
                    //           icon: Obx(() => CircleAvatar(
                    //                 backgroundColor:
                    //                     controller.selectedpage.value == 2
                    //                         ? AdvColors.navyellow
                    //                         : Colors.white,
                    //                 radius: _screenheight * 0.023,
                    //                 // height: _screenheight * 0.039006,
                    //                 // width: _screenwidth * 0.1616244,
                    //                 child: FaIcon(
                    //                   FontAwesomeIcons.graduationCap,
                    //                   color: Colors.black,
                    //                 ),
                    //               )),
                    //         )
                    //       ]),
                    // )
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
