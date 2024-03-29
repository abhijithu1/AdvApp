import 'package:advapp/constants.dart';
import 'package:advapp/studentview/views/studentview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class StudentsBody extends StatelessWidget {
  const StudentsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: Container(
              height: height * 0.11265,
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon:
                      GestureDetector(child: FaIcon(FontAwesomeIcons.sort)),
                  prefixIcon: Icon(Icons.search),
                  fillColor: AdvColors.loginfield,
                  focusColor: AdvColors.loginfield,
                  hoverColor: AdvColors.loginfield,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () => Get.to(() => const StudentView()),
                      child: Container(
                        height: height * 0.105974,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: ListTile(
                          title: Text(
                            "John Snow",
                            style: StyleText.font2.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: height * 0.024054,
                            ),
                          ),
                          subtitle: Text(
                            "T4B",
                            textAlign: TextAlign.right,
                            style: StyleText.font2.copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: height * 0.021054,
                            ),
                          ),
                          trailing: Container(
                            height: height * 0.1021631,
                            width: width * 0.152564,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://img.freepik.com/free-photo/indoor-shot-beautiful-happy-african-american-woman-smiling-cheerfully-keeping-her-arms-folded-relaxing-indoors-after-morning-lectures-university_273609-1270.jpg",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      )),
    );
  }
}
