import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0;

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
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
                height: 200,
                color: Colors.white12,
                width: double.infinity,
                child: Image.asset('assets/images/wallpaper2.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
