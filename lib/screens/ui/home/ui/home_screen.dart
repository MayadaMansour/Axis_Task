import 'dart:convert';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';
import '../../details/details.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  List popularPeople = [];
  List detailsPeople = [];


  final String api_key = "70b7c391b11bbc6113f65a8c3c1c415b";
  final String acess_taken =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3MGI3YzM5MWIxMWJiYzYxMTNmNjVhOGMzYzFjNDE1YiIsInN1YiI6IjY0NmNjNzZkZDE4NTcyMDEwMTlhMWM0MCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.HejHH1XAnBP20gxcRaNvQhbGe72BbkrIIB_7_L44JA4";

  @override
  void initState() {
    getMoview();
    super.initState();
  }

  getMoview() async {
    TMDB tmdbWithCustomLogs = TMDB(ApiKeys(api_key, acess_taken),
        logConfig: ConfigLogger(showLogs: true, showErrorLogs: true));
    Map popularResult = await tmdbWithCustomLogs.v3.people.getPopular();


    setState(() {
      popularPeople = popularResult["results"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        shadowColor: Colors.grey,
        title: Text("🎬  Movie App "),
      ),
      body:SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text('popular people:',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 20),
                  GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: popularPeople.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.8,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => DetailsScreen()));

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                      name: popularPeople[index]["name"],
                                      poster:
                                      "https://image.tmdb.org/t/p/w500" +
                                          popularPeople[index]["profile_path"],
                                      // desc: popularPeople[index]["biography"],
                                      // vote: popularPeople[index]["gender"]
                                      //     .toString(),
                                      // lunch: popularPeople[index]["birthday"],
                                    )));
                          },
                          child: Container(
                            width: 140,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://image.tmdb.org/t/p/w500' +
                                            popularPeople[index]['profile_path'],
                                      ),
                                    ),
                                  ),
                                  height: 200,
                                ),
                                SizedBox(height: 15),
                                Container(
                                  child: Text(
                                    popularPeople[index]['name']
                                    ,
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
