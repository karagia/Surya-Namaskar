//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:surya_namaskar/posedetails.dart';

import 'posedetails.dart';

//This widget has the UI for the info button
//on a pose
//If a user is on a pose and clicks on the i button
//it opens up a page where it gives the details
//about the breathing, the benefits and the
//precautions that one might need to take
//while doing a pose
class PoseInfoPage extends StatelessWidget {
  final PoseDetails pose;
  PoseInfoPage({required this.pose});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pose.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            )),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/sunset.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: const Text(
                            'Breathing:',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Verdana',
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            pose.breathing,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Arial',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    const Divider(
                      height: 20,
                      thickness: 4,
                      indent: 0,
                      endIndent: 0,
                      color: Colors.white,
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: const Text(
                            'Precautions:',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Verdana',
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Text(
                              pose.precaution,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Arial',
                              ),
                            )),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    const Divider(
                      height: 20,
                      thickness: 4,
                      indent: 0,
                      endIndent: 0,
                      color: Colors.white,
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: const Text(
                            'Benefits:',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Verdana',
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            pose.benefits,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Arial',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "infobtn",
        child: Text('OK'),
        backgroundColor: Colors.amberAccent,
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
