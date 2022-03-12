import 'package:flutter/material.dart';
import 'package:surya_namaskar/contact.dart';
import 'package:select_form_field/select_form_field.dart';
import 'package:surya_namaskar/posedetails.dart';
import 'package:surya_namaskar/salutation_step.dart';
import 'about.dart';
import 'user.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final List<Map<String, dynamic>> _items1 = [
    {
      'value': 'Beginner',
      'label': 'Beginner',
      'icon': Icon(Icons.grade),
    },
    {
      'value': 'Novice',
      'label': 'Novice',
      'icon': Icon(Icons.grade),
    },
    {
      'value': 'Experienced',
      'label': 'Experienced',
      'icon': Icon(Icons.grade),
    },
  ];
  final List<Map<String, dynamic>> _items2 = [
    {
      'value': 'Hatha Surya Namaskar',
      'label': 'Hatha Surya Namaskar',
      'icon': Icon(Icons.grade),
    },
    {
      'value': 'Sivanda Sun Salutation',
      'label': 'Sivanda Sun Salutation',
      'icon': Icon(Icons.grade),
    },
    {
      'value': 'Ashtanga Surya Namaskar A',
      'label': 'Ashtanga Surya Namaskar A',
      'icon': Icon(Icons.grade),
    },
    {
      'value': 'Ashtanga Surya Namaskar B',
      'label': 'Ashtanga Surya Namaskar B',
      'icon': Icon(Icons.grade),
    },
    {
      'value': 'Iyengar Surya Namaskar',
      'label': 'Iyengar Surya Namaskar',
      'icon': Icon(Icons.grade),
    },
  ];
  final List<Map<String, dynamic>> _items3 = [
    {
      'value': 'On',
      'label': 'On',
      'icon': Icon(Icons.grade),
    },
    {
      'value': 'Off',
      'label': 'Off',
      'icon': Icon(Icons.grade),
    }
  ];
  TextEditingController nameController = TextEditingController();
  TextEditingController cycleController = TextEditingController();
  String? val1 = "";
  String? val2 = "";
  String? val3 = "";
  late User? newUser;
  @override
  void initState() {
    super.initState();
    nameController.text = "";
    cycleController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.wb_sunny),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        //title: Text("Surya Namaskar"),
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
      body: ListView(
        children: [
          Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/sunset.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(children: [
                Padding(padding: EdgeInsets.all(30)),
                SizedBox(
                    child: Text("Surya Namaskar",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600))),
                Padding(padding: EdgeInsets.all(30)),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32)),
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                SelectFormField(
                  type: SelectFormFieldType.dropdown, // or can be dialog
                  // initialValue: 'Beginner',
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32)),
                    labelText: 'Please select your level of experience',
                  ),
                  items: _items1,
                  onChanged: (val) {
                    val1 = val;
                  },
                  onSaved: (val) {
                    val1 = val;
                  },
                ),
                Padding(padding: EdgeInsets.all(10)),
                SelectFormField(
                  type: SelectFormFieldType.dropdown, // or can be dialog
                  // initialValue: 'Beginner',
                  decoration: InputDecoration(
                    // fillColor: Colors.black,
                    // filled: true,
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32)),
                    labelText: 'Please choose todays workout',
                  ),
                  items: _items2,
                  onChanged: (val) {
                    val2 = val;
                  },
                  onSaved: (val) {
                    val2 = val;
                  },
                ),
                Padding(padding: EdgeInsets.all(10)),
                SelectFormField(
                  type: SelectFormFieldType.dropdown, // or can be dialog
                  initialValue: 'Breathing Cues On',
                  decoration: InputDecoration(
                    // fillColor: Colors.black,
                    // filled: true,
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32)),
                    labelText: 'Breathing Cues On/Off',
                  ),
                  items: _items3,
                  onChanged: (val) {
                    val3 = val;
                  },
                  onSaved: (val) {
                    val3 = val!;
                  },
                ),
                Padding(padding: EdgeInsets.all(10)),
                TextFormField(
                  controller: cycleController,
                  decoration: InputDecoration(
                    hintText: 'Number of Cycles?',
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32)),
                  ),
                ),
                Padding(padding: EdgeInsets.all(30)),
                Material(
                  borderRadius: BorderRadius.circular(30),
                  shadowColor: Colors.amberAccent,
                  elevation: 15,
                  color: Colors.amberAccent,
                  child: MaterialButton(
                      textColor: Colors.white,
                      child: Text("START"),
                      onPressed: () {
                        getUser(nameController.text, val1, val2, val3,
                            cycleController.text);
                        // setState(() {
                        //   print('initial user is set to : $newUser');
                        //   if (null != newUser) {
                        //     print('Before calling navigator $newUser');
                        //     Navigator.of(context).pushNamed(
                        //       'salutation()',
                        //       arguments: newUser,
                        //     );
                        //   }
                        // });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SalutationPage(
                                    newUser: newUser,
                                    poseList: PoseList(),
                                  ),
                              // Pass the arguments as part of the RouteSettings. The
                              // DetailScreen reads the arguments from these settings.
                              settings: RouteSettings(arguments: newUser)),
                        );
                        // SalutationPage salPage = new SalutationPage(
                        //   newUser: newUser,
                        //   poseList: PoseList(),
                        // );
                        // Navigator.push(
                        //   context,
                        //   new MaterialPageRoute(builder: (context) => salPage),
                        // );
                      }),
                ),
                Padding(padding: EdgeInsets.all(90)),
              ])),
        ],
      ),
    );
  }

  void getUser(var nameController, String? val1, String? val2, String? val3,
      var cycleController) {
    int cycleController = int.parse(this.cycleController.text);
    newUser =
        User(nameController, this.val1, this.val2, this.val3, cycleController);
    print(newUser.toString());
  }
}
