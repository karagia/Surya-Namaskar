import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//This is the Credits page, where the credits
//are mentioned.
//It also has a link to the URLs where inspiration for this app was taken from
class CreditsPage extends StatelessWidget {
  void launchURL() async {
    const url = 'https://www.fitsri.com/articles/surya-namaskar-types';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void launchURL2() async {
    const url = 'https://www.sivanandaonline.org/?format=html';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void launchURL3() async {
    const url = 'https://github.com/rama-vaidhiy';
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
                    Text(
                      "All images and text used in the application:",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Arial',
                      ),
                    ),
                    SizedBox(height: 20.0),
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
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Arial',
                                color: Colors.blueAccent,
                              ),
                            ),
                            onTap: () => launchURL(),
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
                    Text(
                      "Other Articles that contributed to this Application:",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Arial',
                      ),
                    ),
                    SizedBox(height: 10),
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
                            'The Divine Life Society',
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
                              'www.sivanandaonline.org',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Arial',
                                color: Colors.blueAccent,
                              ),
                            ),
                            onTap: () => launchURL2(),
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
                    Text(
                      "Github resources and code examples:",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Arial',
                      ),
                    ),
                    SizedBox(height: 10),
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
                            'Git Hub Code examples',
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
                            'Rama Vaidhiyanathan.',
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
                              'www.github.com',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Arial',
                                color: Colors.blueAccent,
                              ),
                            ),
                            onTap: () => launchURL3(),
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
        heroTag: "infobtn2",
        child: Text('OK'),
        backgroundColor: Colors.amberAccent,
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
