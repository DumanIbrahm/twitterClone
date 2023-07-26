import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/auth.dart';
import 'package:twitter_clone/my_pages/navigator_page.dart';

class PasswordPage extends StatefulWidget {
  String email;
  PasswordPage({super.key, required this.email});

  // Widget title() {
  //   return const Text(
  //     'Log in to Twitter.',
  //     style: TextStyle(
  //         fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
  //   );
  // }

  // Widget userId() {
  //   return Text(user?.email ?? "user email",
  //       style: const TextStyle(
  //           fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white));
  // }

  // Widget signOutButton() {
  //   return ElevatedButton(onPressed: _signOut, child: Text("Sign out"));
  // }

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  String password = "";
  String errorMessage = "";
  bool isLogin = false;

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      await Auth().signInWithEmailAndPassword(email: email, password: password);
      setState(() {
        isLogin = true;
      });
    } on FirebaseAuthException catch (e) {
      setState(() {
        isLogin = false;
      });
      errorMessage = e.message!;
    }
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await Auth()
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      errorMessage = e.message!;
    }
  }

  final User? user = Auth().currentUser;

  Future<void> _signOut() async {
    await Auth().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Image(
            image: AssetImage('assets/images/twitter.png'), height: 30),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text('Enter your password',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  onChanged: (value) => password = value,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey.shade700, width: 1.0)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    label: const Text("Password",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: SizedBox(
                width: 300,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    signInWithEmailAndPassword(widget.email, password)
                        .whenComplete(() {
                      if (isLogin) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Navigators();
                        }));
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) => SimpleDialog(
                            title: const Center(
                                child: Text("Kullanıcı adı veya şifre hatalı")),
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Tamam"),
                              ),
                            ],
                          ),
                        );
                      }
                    });
                  },
                  child: const Text(
                    "Log in",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showLogIn(BuildContext context, Future future) {
    showDialog(
      context: context,
      builder: (context) => FutureBuilder<void>(
          future: future,
          builder: ((context, AsyncSnapshot<void> snapshot) {
            if (snapshot.hasData) {
              ///Sunucuya 200 ile başarılı istek atıldı
              return SimpleDialog(
                title: const Text("Oturum açma başarılı"),
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Navigators();
                      }));
                    },
                    child: const Text("Tamam"),
                  ),
                ],
              );
            } else {
              return SimpleDialog(
                title: const Text("Error"),
                children: [
                  Text(snapshot.error.toString()),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Tamam"),
                  ),
                ],
              );
            }
          })),
    );
  }
}
