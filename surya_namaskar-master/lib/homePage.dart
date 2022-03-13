import 'package:flutter/material.dart';
import 'package:surya_namaskar/contact.dart';
import 'package:select_form_field/select_form_field.dart';
import 'package:surya_namaskar/posedetails.dart';
import 'package:surya_namaskar/salutation_step.dart';
import 'CreditsPage.dart';
import 'user.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  //Drop down options for form fields
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
  //Text Editing controllers
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
        actions: [
          //Menu Button
          PopupMenuButton(
            icon: Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Icon(Icons.menu),
            ),
            itemBuilder: (context) => [
              //Menu Item CONTACT
              PopupMenuItem(
                child: Text("Contact"),
                value: 2,
              ),
              //Menu Item CREDITS
              PopupMenuItem(
                child: Text("Credits"),
                value: 3,
              )
            ],
            onSelected: (result) {
              if (result == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => contact()),
                );
              }
              if (result == 3) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreditsPage()));
              }
            },
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
              //Page background image
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/sunset.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(children: [
                Padding(padding: EdgeInsets.all(30)),
                //Page Title
                SizedBox(
                    child: Text("Surya Namaskar",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600))),
                Padding(padding: EdgeInsets.all(30)),
                //First Text Input field NAME
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
                //Dropdown list for EXPREIENCE
                SelectFormField(
                  type: SelectFormFieldType.dropdown,
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
                //Dropdown list for WORKOUT
                SelectFormField(
                  type: SelectFormFieldType.dropdown,
                  decoration: InputDecoration(
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
                //Dropdown list for BREATHING
                SelectFormField(
                  type: SelectFormFieldType.dropdown,
                  initialValue: 'Breathing Cues On',
                  decoration: InputDecoration(
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
                //TExt Form Field for CYCLES
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
                  //START button
                  child: MaterialButton(
                      textColor: Colors.white,
                      child: Text("START"),
                      onPressed: () {
                        //getUser method takes all inputs/drop down selections and puts them into a User object
                        getUser(nameController.text, val1, val2, val3,
                            cycleController.text);
                        //We then pass the new User to the next screen ready to start the workout
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SalutationPage(
                                    newUser: newUser,
                                    poseList: PoseList(),
                                  ),
                              settings: RouteSettings(arguments: newUser)),
                        );
                      }),
                ),
                Padding(padding: EdgeInsets.all(90)),
              ])),
        ],
      ),
    );
  }

//Combines the 5 inputs and returns a User
  void getUser(var nameController, String? val1, String? val2, String? val3,
      var cycleController) {
    int cycleController = int.parse(this.cycleController.text);
    newUser =
        User(nameController, this.val1, this.val2, this.val3, cycleController);
    print(newUser.toString());
  }
}
