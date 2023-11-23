import 'package:flutter/material.dart';
import 'package:movie_task/screens/ui/details/details_people.dart';
import '../../../../core/model/people_model.dart';
import '../../details/details.dart';

class PopularMovie extends StatelessWidget {
  final List popularDetails;




  const PopularMovie({Key? key, required this.popularDetails}) : super(key: key);





  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Popular People:',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Container(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: popularDetails.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailsPeople(
                                    name: popularDetails[index]["name"],
                                    poster:
                                    "https://image.tmdb.org/t/p/w500" +
                                        popularDetails[index]["profile_path"],
                                    birth: popularDetails[index]["gender"].toString(),
                                     work: popularDetails[index]["known_for_department"],

                                  )));
                      },
                      child: Container(
                        width: 150,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://image.tmdb.org/t/p/w500' +
                                        popularDetails[index]['profile_path'],
                                  ),
                                ),
                              ),
                              height: 200,
                            ),
                            SizedBox(height: 5),
                            Container(
                              child: Text(
                                popularDetails[index]['name'] != null
                                    ? popularDetails[index]['name']
                                    : 'Loading',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),

    );
  }




}
