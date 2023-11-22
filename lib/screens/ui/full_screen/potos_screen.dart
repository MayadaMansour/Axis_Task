import 'package:flutter/material.dart';


class PhotoScreen extends StatelessWidget {
  const PhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // final controller = PageController(
    //   initialPage: 0,
    // );
    // return PageView.builder(
    //   controller: controller,
    //   scrollDirection: Axis.horizontal,
    //   itemBuilder: (BuildContext context, int index) {
        return Stack(
          children: [
            Container(
              color: Colors.black,
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 50),
                  decoration: ShapeDecoration(
                    color: Colors.cyanAccent,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // image: DecorationImage(
                    //   image: AssetImage(Images.panar),
                    //   fit: BoxFit.fill,
                    // ),
                  ),
                ),
              ),
            ),
          ],
        );
    //   },
    //
    // );
  }
}
