import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class contact extends StatelessWidget {
  // Builder methods rely on a set of data, such as a list.

  @override
  Widget build(BuildContext context) {
    // This is a new page, so you need a new Scaffold!
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('Contact Us'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: ContactUs(
            cardColor: Colors.white,
            textColor: Colors.teal.shade700,
            logo: AssetImage(
              'images/alex.jpg',
            ),
            email: 'alex.karagianis@yahoo.com',
            companyName: '',
            companyColor: Colors.teal.shade900,
            dividerThickness: 2,
            phoneNumber: '07710476914',
            website: 'https://affletic.co.uk',
            githubUserName: 'karagia',
            linkedinURL:
                'https://www.linkedin.com/in/alexandra-karagianis-85a16a81',
            tagLine: 'Alexandra Karagianis',
            taglineColor: Colors.amberAccent,
            twitterHandle: 'Alexandra Karagianis',
            instagram: 'alexandrakarrie_ifbbpro',
            facebookHandle: 'Alexandra Karagianis'),
      ),
    );
  }
}
