import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//This is the about page, where the credits
//are mentioned.
//It also has a link to the URL from where the
//book that motivated this app was bought
class CreditsPage extends StatelessWidget {
  void launchURL() async {
    const url = 'https://www.fitsri.com/articles/surya-namaskar-types';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Credits',
            style: TextStyle(
              color: Colors.white,
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
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child:
                          Text("All images and text used in the application:"),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: const Text(
                            'Source:',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Verdana',
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Surya Namaskar Types (Hatha, Sivananda, Ashtanga): Poses & Benefits',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Arial',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: const Text(
                            'Author:',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Verdana',
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Ashish.',
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
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: const Text(
                            'Web:',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Verdana',
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            child: Text(
                              'www.fitsri.com',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Arial',
                                color: Colors.blueAccent,
                              ),
                            ),
                            onTap: () => launchURL(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "infobtn2",
        child: Text('OK'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
