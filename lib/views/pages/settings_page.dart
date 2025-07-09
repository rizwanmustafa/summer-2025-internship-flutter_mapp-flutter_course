import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});

  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0;

  String dropdownButtonValue = 'PKR';

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: false,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('This is a snackbar!'),
                      duration: Duration(seconds: 1),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  foregroundColor: Colors.white,
                ),
                child: Text('Open Snackbar!'),
              ),

              Divider(color: Colors.green, thickness: 2.0),

              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog.adaptive(
                        title: Text('Alert Dialog'),
                        content: Text('I am an alert dialog!'),
                        actions: [
                          FilledButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  foregroundColor: Colors.white,
                ),
                child: Text('Open Dialog!'),
              ),

              DropdownButton(
                value: dropdownButtonValue,
                items: [
                  DropdownMenuItem(value: 'PKR', child: Text('PKR')),
                  DropdownMenuItem(value: 'USD', child: Text('USD')),
                  DropdownMenuItem(value: 'AED', child: Text('AED')),
                  DropdownMenuItem(value: 'SAR', child: Text('SAR')),
                ],
                onChanged: (value) {
                  setState(() {
                    dropdownButtonValue = value as String;
                  });
                },
              ),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
                controller: controller,
                onEditingComplete: () => setState(() {}),
              ),
              Text(controller.text),
              Checkbox.adaptive(
                value: isChecked,
                onChanged: (bool? newVal) => setState(() {
                  isChecked = newVal;
                }),
              ),

              CheckboxListTile.adaptive(
                title: Text('Click me!'),
                value: isChecked,
                onChanged: (bool? newVal) => setState(() {
                  isChecked = newVal;
                }),
              ),

              Switch.adaptive(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),

              SwitchListTile.adaptive(
                title: Text('Switch me!'),
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),

              Slider.adaptive(
                max: 10,
                divisions: 10,
                value: sliderValue,
                onChanged: (newValue) => setState(() {
                  sliderValue = newValue;
                }),
              ),
              InkWell(
                splashColor: Colors.green,
                onTap: () {
                  print('Background Image selected!');
                },

                child: Container(
                  height: 50,
                  color: Colors.white12,
                  width: double.infinity,
                  child: Image.asset('assets/images/wallpaper2.jpg'),
                ),
              ),

              ElevatedButton(onPressed: () {}, child: Text('Click Me!')),
              FilledButton(onPressed: () {}, child: Text('Click Me!')),
              TextButton(onPressed: () {}, child: Text('Click Me!')),
              CloseButton(),
              BackButton(),
              CupertinoButton.filled(
                child: Text('Click Me! I am an iOS Button'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
