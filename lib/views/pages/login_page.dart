import 'package:flutter/material.dart';
import 'package:flutter_tutorial/views/widget_tree.dart';
import 'package:flutter_tutorial/views/widgets/hero_widget.dart';

class LoginPage extends StatefulWidget {
  final String title;

  const LoginPage({super.key, required this.title});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController(text: '123');
  TextEditingController passwordController = TextEditingController(text: '123');

  // TODO: Implement these confirmation email / password through an API later

  String confirmedEmail = '123';
  String confirmedPassword = '123';

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return FractionallySizedBox(
                  widthFactor: screenWidth > 500 ? .5 : 1,
                  child: Column(
                    children: [
                      HeroWidget(title: widget.title),
                      SizedBox(height: 20.0),

                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Email',
                        ),
                        controller: emailController,
                        onEditingComplete: () => setState(() {}),
                      ),

                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Password',
                        ),

                        controller: passwordController,
                        onEditingComplete: () => setState(() {}),
                      ),

                      SizedBox(height: 10),

                      FilledButton(
                        style: FilledButton.styleFrom(
                          minimumSize: Size(double.infinity, 40.0),
                        ),
                        onPressed: () {
                          onLoginPressed(context);
                        },
                        child: Text(widget.title),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void onLoginPressed(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    if (emailController.text == confirmedEmail &&
        passwordController.text == confirmedPassword) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => WidgetTree()),
        (_) => false,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Invalid email/password',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
