import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/my_pages/login_page/login_password_page.dart';
import 'package:twitter_clone/my_pages/navigator_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    Firebase.initializeApp();
    super.initState();
  }

  String email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const SizedBox(
          height: 40,
          child: Image(image: AssetImage('assets/images/twitter.png')),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: LayoutBuilder(
              builder: (context, constraints) {
                // Determine the available width for widgets
                double maxWidth = constraints.maxWidth;

                // Use the minimum of 250 and the available width to avoid overflow
                double buttonWidth = maxWidth < 250 ? maxWidth : 250;

                return Column(
                  children: [
                    const SizedBox(height: 100),
                    const Text(
                      "Sign in to Twitter",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 30,
                        width: buttonWidth,
                        child: ElevatedButton.icon(
                          label: const Text(
                            "Google ile oturum açın",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          icon: const Image(
                            image: AssetImage('assets/images/google.png'),
                            height: 20,
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 30,
                        width: buttonWidth,
                        child: ElevatedButton.icon(
                          label: const Text(
                            "Sign in with Apple",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          icon: const Image(
                            image: AssetImage(
                              'assets/images/apple-logo.png',
                            ),
                            height: 20,
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            color: Colors.grey.shade700,
                            width: 100,
                            height: 3,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15.0, right: 15),
                            child: Text(
                              "or",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                          Container(
                            color: Colors.grey.shade700,
                            width: 100,
                            height: 3,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 50,
                        width: buttonWidth,
                        child: TextField(
                          onChanged: (value) => email = value,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey.shade700, width: 1.0)),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue)),
                            label: const Text("Phone, e-mail, or username",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 30,
                        width: buttonWidth,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return PasswordPage(
                                email: email,
                              );
                            }));
                          },
                          child: const Text(
                            "Next",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 30,
                        width: buttonWidth,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: const BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Forgot password?",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                              onPressed: () {}, child: const Text("Sign up"))
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
