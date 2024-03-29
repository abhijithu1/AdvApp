import 'package:advapp/approval/views/approval.dart';
import 'package:advapp/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApprovalBody extends StatelessWidget {
  final double height;
  final double width;
  const ApprovalBody({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 40,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () => Get.to(() => ApprovalPage(title: index)),
              child: Container(
                height: height * 0.105974,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Center(
                  child: ListTile(
                    title: Text(
                      "Approval ${index + 1}",
                      style: StyleText.font2.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: height * 0.024054,
                      ),
                    ),
                    subtitle: Text(
                      "John Smith",
                      textAlign: TextAlign.right,
                      style: StyleText.font2.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: height * 0.021054,
                      ),
                    ),
                    leading: Container(
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
            ),
          );
        },
      ),
    );
  }
}
