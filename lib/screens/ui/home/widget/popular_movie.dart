import 'package:flutter/material.dart';

import '../../../model/details_model.dart';
import '../../details/details.dart';

class PopularMovie extends StatelessWidget {
  final List popular;

  const PopularMovie({Key? key, required this.popular}) : super(key: key);

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
                  itemCount: popular.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) =>
                        //           DetailsPeople()));
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
                                        popular[index]['profile_path'],
                                  ),
                                ),
                              ),
                              height: 200,
                            ),
                            SizedBox(height: 5),
                            Container(
                              child: Text(
                                popular[index]['name'] != null
                                    ? popular[index]['name']
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
