import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:surya_namaskar/about.dart';
import 'package:surya_namaskar/posedetails.dart';
import 'package:surya_namaskar/poseinfo.dart';
import 'package:surya_namaskar/user.dart';
import 'contact.dart';
import 'posedetails.dart';

class SalutationPage extends StatefulWidget {
  SalutationPage({User? newUser, required this.poseList});
  final PoseList poseList;

  @override
  _SalutationPageState createState() => _SalutationPageState();
}

class _SalutationPageState extends State<SalutationPage> {
  //So whilst my route isnt working YET, I have hard coded a user to
  //allow me to continue development on the features of the App
  // User tempUser = User('Alex', 'Beginner', 'Hatha Surya Namaskar', 'On', 2);
  User newUser = User("", "", "", "", -1);
  // _SalutationPageState();
  bool prevButtonDisabled = true;
  bool nextButtonDisabled = false;
  int _totalPoses = 12;
  late List<PoseDetails> _poses;
  int _currentPageNo = 0;
  int _delayTime = 10;
  late Timer _delayTimer;
  bool breathingCue = true;

  //just making sure that the total number of poses
  //is retrieved from the list and not the hardcoded value
  //also need to get the list of poses from the list.
  //this is because if we change it later, it will not
  //affect the UI code (i.e. this page)
  @override
  void initState() {
    super.initState();
    var repititions = (newUser.cycles * 12);

    _totalPoses = widget.poseList.poses.length;
    _poses = widget.poseList.poses;
    if (newUser.experience == 'Beginner') {
      _delayTime = 3;
    } else if (newUser.experience == 'Novice') {
      _delayTime = 20;
    } else if (newUser.experience == 'Experienced') {
      _delayTime = 15;
    }

    if (newUser.breathing == 'Off') {
      breathingCue = false;
    } else {
      breathingCue = true;
    }

    if (newUser.workout == 'Hatha Surya Namaskar') {
      //TODO
    } else if (newUser.workout == 'Sivanda Sun Salutation') {
      //TODO
    } else if (newUser.workout == 'Ashtanga Surya Namaskar A') {
      //TODO
    } else if (newUser.workout == 'Ashtanga Surya Namaskar B') {
      //TODO
    } else if (newUser.workout == 'Lyengar Surya Namaskar') {
      //TODO
    }
  }

  //tells you what to do when we click on the -> next button
  //basically identify the next pose to navigate to
  //and if the timer is set, start the timer (for it to
  //auto navigate to the next page)
  //and update all the button status
  void gotoNextPage() {
    setState(() {
      if (_currentPageNo == (_totalPoses - 1)) {
        _currentPageNo = 0;
      } else {
        _currentPageNo++;
      }
      initDelayTimer();
      checkAndUpdateButtonStatus();
    });
  }

  //this is the timer code
  //we set the timer to a value between 0 and 15
  //(no real reason for that..just that it might take
  //15 secs to do a pose)
  //and then accordingly navigate to the next pose
  //and ensure that we do not loop through
  void initDelayTimer() {
    _delayTimer = new Timer(Duration(seconds: (_delayTime)), () {
      setState(() {});
      if (_delayTime != 0) {
        if (_currentPageNo > 0 && _currentPageNo < _totalPoses - 1) {
          gotoNextPage();
        }
      }
    });
  }

  //tells you what to do when you press <- prev button
  //just like the next button, need to ensure that the
  //change stops at the first pose and the buttons
  //are updated accordingly.
  //unlike the next button, this doesn't trigger the
  //timer in anyway.
  void gotoPrevPage() {
    setState(() {
      if (_currentPageNo == 0) {
        _currentPageNo = 0;
      } else {
        _currentPageNo--;
      }
      checkAndUpdateButtonStatus();
      initDelayTimer();
    });
  }

  //updates all the buttons on the page
  //the prev, next, info, about, main etc.
  //depending on which page/pose we are in
  //at the moment.
  void checkAndUpdateButtonStatus() {
    if (_currentPageNo == 0) {
      prevButtonDisabled = true;
    } else {
      prevButtonDisabled = false;
    }
    if (_currentPageNo == (_totalPoses - 1)) {
      nextButtonDisabled = true;
    } else {
      nextButtonDisabled = false;
    }
  }

  //Returns the current page's image
  String getCurrentPageImage() {
    String returnVal = _poses.elementAt(_currentPageNo).image;
    return returnVal;
  }

  //Returns the current page's heading
  String getCurrentPageHeading() {
    String returnVal = _poses.elementAt(_currentPageNo).name;
    return returnVal;
  }

  //Returns the current page's description
  String getCurrentPageDescription() {
    return _poses.elementAt(_currentPageNo).process;
  }

  //Navigates to the Home Screen
  //where we give an introduction to the whole app
  void gotoHomeScreen() {
    setState(() {
      _currentPageNo = 0;
      checkAndUpdateButtonStatus();
      initDelayTimer();
    });
  }

  //Returns the current PoseDetails object
  PoseDetails getCurrentPose() {
    return _poses.elementAt(_currentPageNo);
  }

  //Building the UI for the page
  @override
  Widget build(BuildContext context) {
    final User newUser = ModalRoute.of(context)!.settings.arguments as User;
    print(newUser);

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.wb_sunny),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: Text(
          'Sun Salutations - ' + getCurrentPageHeading(),
          style: TextStyle(fontSize: 10),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, 'homePage()');
              },
            ),
          ),
          PopupMenuButton(
            icon: Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Icon(Icons.menu),
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("About"),
                value: 1,
              ),
              PopupMenuItem(
                child: Text("Contact"),
                value: 2,
              ),
              PopupMenuItem(
                child: Text("Credits"),
                value: 3,
              )
            ],
            onSelected: (result) {
              if (result == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              }
              if (result == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => contact()),
                );
              }
              if (result == 3) {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => AboutPage()),
                // ); TODO
              }
            },
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/sunset.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: InteractiveViewer(
                  panEnabled: true,
                  boundaryMargin: EdgeInsets.all(100),
                  minScale: 0.5,
                  maxScale: 2,
                  child: Image.asset(
                    getCurrentPageImage(),
                    width: 600,
                    height: 600,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  child: Icon(FontAwesomeIcons.info),
                  backgroundColor: Colors.amberAccent,
                  onPressed: () {
                    PoseInfoPage infopage =
                        new PoseInfoPage(pose: getCurrentPose());
                    Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (context) => infopage),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(
                      getCurrentPageDescription(),
                      textAlign: TextAlign.justify,
                      softWrap: true,
                      textScaleFactor: 1.2,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.amberAccent)),
                    // mini: true,
                    child: Icon(FontAwesomeIcons.replyAll),
                    onPressed: gotoHomeScreen,
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.amberAccent)),
                    // mini: true,
                    child: Icon(FontAwesomeIcons.arrowCircleLeft),
                    onPressed: prevButtonDisabled ? null : () => gotoPrevPage(),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.amberAccent)),
                    child: Icon(FontAwesomeIcons.arrowCircleRight),
                    onPressed: nextButtonDisabled ? null : () => gotoNextPage(),
                  ),
                ),
                // Expanded(
                //   flex: 1,
                //   //The circular slider is used to enable the user
                //   //to set the timer between the movements
                //   child: SleekCircularSlider(
                //     appearance: CircularSliderAppearance(
                //       infoProperties: InfoProperties(
                //           mainLabelStyle: TextStyle(
                //         color: Colors.white,
                //       )),
                //       customColors: CustomSliderColors(
                //         progressBarColor: Colors.blue,
                //         dotColor: Colors.blueAccent,
                //         trackColor: Colors.deepPurple,
                //         hideShadow: true,
                //       ),
                //       size: 50.0,
                //     ),
                //     initialValue: 0.0,
                //     max: 15.0,
                //     min: 0.0,
                //     onChange: (double value) {
                //       Future.delayed(
                //           Duration.zero,
                //           () => setState(() {
                //                 _delayTime = value.toInt();
                //                 //print(value.toInt());
                //               }));
                //     },
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
