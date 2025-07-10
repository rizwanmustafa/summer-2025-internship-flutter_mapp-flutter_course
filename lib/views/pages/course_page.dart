import 'package:flutter/material.dart';
import 'package:flutter_tutorial/data/classes/activity_class.dart';
import 'package:flutter_tutorial/views/widgets/hero_widget.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  late Future<Activity> activity;
  @override
  void initState() {
    activity = getData();
    super.initState();
  }

  Future<Activity> getData() async {
    var url = Uri.https('bored-api.appbrewery.com', '/random');

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final activity = Activity.fromJson(
        convert.jsonDecode(response.body) as Map<String, dynamic>,
      );

      debugPrint(activity.activity);

      return activity;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load an activity!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          Widget retWidget;
          if (snapshot.connectionState == ConnectionState.waiting) {
            retWidget = Center(child: CircularProgressIndicator.adaptive());
          } else if (snapshot.hasData) {
            Activity activity = snapshot.data as Activity;
            retWidget = Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    HeroWidget(title: activity.activity),
                    Text(activity.activity),
                  ],
                ),
              ),
            );
          } else {
            retWidget = Center(child: Text('Error!'));
          }

          return retWidget;
        },
      ),
    );
  }
}
