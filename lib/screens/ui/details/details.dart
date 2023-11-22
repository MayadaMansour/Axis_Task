import 'package:flutter/material.dart';

import '../full_screen/potos_screen.dart';

// class DetailsScreen extends StatelessWidget {
//
//   bool? adult;
//   List<String>? alsoKnownAs;
//   String? biography;
//   String? birthday;
//   int? gender;
//   int? id;
//   String? imdbId;
//   String? knownForDepartment;
//   String? name;
//   String? placeOfBirth;
//   double? popularity;
//   String? profilePath;
//
//   DetailsScreen(
//       {this.adult,
//         this.alsoKnownAs,
//         this.biography,
//         this.birthday,
//         this.gender,
//         this.id,
//         this.imdbId,
//         this.knownForDepartment,
//         this.name,
//         this.placeOfBirth,
//         this.popularity,
//         this.profilePath});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black12,
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 height: 250,
//                 child: Stack(
//                   children: [
//                     Positioned(
//                       child: Container(
//                         height: 250,
//                         width: MediaQuery.of(context).size.width,
//                         color: Colors.cyanAccent,
//                         child: Image.network(
//                           profilePath!,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     BackButton(color: Colors.white),
//                     Positioned(
//                         bottom: 10,
//                         child: Text(
//                           " ⭐ Rate:",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold),
//                         ))
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Container(
//                 padding: EdgeInsets.all(10),
//                 child: Text(
//                   // name!=null?name:
//                   "Description",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20),
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.only(left: 20),
//                 child: Text(
//                   name!,
//                   maxLines:1 ,
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 14),
//                 ),
//               ),
//               SizedBox(height: 10),
//               Container(
//                 padding: EdgeInsets.only(left: 20),
//                 child: Text(
//                   biography!,
//                   maxLines:1 ,
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 14),
//                 ),
//               ),
//               SizedBox(height: 10),
//               Container(
//                   height: MediaQuery.of(context).size.height,
//                   padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
//                   child: GridView.builder(
//                       shrinkWrap: true,
//                       physics: NeverScrollableScrollPhysics(),
//                       itemCount: 20,
//                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 3,
//                         childAspectRatio: 0.8,
//                         crossAxisSpacing: 10,
//                         mainAxisSpacing: 8,
//                       ),
//                       itemBuilder: (context, index) {
//                         return InkWell(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => PhotoScreen(
//                                     )));
//                           },
//                           child: Container(
//                             width: 150,
//                             child: Column(
//                               children: [
//                                 Container(
//                                   decoration: BoxDecoration(
//                                       color: Colors.cyanAccent
//
//                                     // image: DecorationImage(
//                                     //   image: NetworkImage(
//                                     //     'https://image.tmdb.org/t/p/w500' +
//                                     //         popular[index]['poster_path'],
//                                     //   ),
//                                     // ),
//                                   ),
//                                   height: 150,
//                                 ),
//                                 // SizedBox(height: 15),
//                                 // Container(
//                                 //   child: Text(
//                                 //     // popular[index]['title'] != null
//                                 //     //     ? popular[index]['title']
//                                 //     //     :
//                                 //     'Loading',
//                                 //     style: TextStyle(
//                                 //         fontSize: 15, color: Colors.white),
//                                 //   ),
//                                 // )
//                               ],
//                             ),
//                           ),
//                         );
//                       }))
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


class DetailsScreen extends StatelessWidget {
  final String name,
      // desc,
      poster

  ;

  const DetailsScreen(
      {Key? key,
        required this.name,
        // required this.desc,

        required this.poster,
        // required this.vote,
        // required this.lunch
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 250,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,
                      // child: Image.network(
                      //   banner,
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                  ),
                  BackButton(color:Colors.white ),
                  // Positioned(
                  //     bottom: 10,
                  //     child: Text(
                  //       " ⭐ Rate:"+vote,
                  //       style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                  //     ))
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                name
                ,style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 20),),
            ),
            // Container(
            //   padding: EdgeInsets.only(left: 20),
            //   child: Text("Lunch_on:"+lunch ,style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 14),),
            // ),
            SizedBox(height: 30),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  height: 250,
                  width: 200,
                  child: Image.network(poster),
                ),
                // Flexible(
                //   child: Container(
                //     padding: EdgeInsets.all(5),
                //     child: Text(desc,style: TextStyle(color: Colors.white,fontSize: 15,),),
                //
                //   ),
                // ),
              ],
            ),



          ],
        ),
      ),
    );
  }
}
