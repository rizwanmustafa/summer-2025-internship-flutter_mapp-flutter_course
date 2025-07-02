import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool? isChecked = false;
  bool isSwitched = false;

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
            controller: controller,
            onEditingComplete: () => setState(() {}),
          ),
          Text(controller.text),
          Checkbox(
            value: isChecked,
            onChanged: (bool? newVal) => setState(() {
              isChecked = newVal;
            }),
          ),

          CheckboxListTile(
            title: Text('Click me!'),
            value: isChecked,
            onChanged: (bool? newVal) => setState(() {
              isChecked = newVal;
            }),
          ),

          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),

          SwitchListTile(
            title: Text('Switch me!'),
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
