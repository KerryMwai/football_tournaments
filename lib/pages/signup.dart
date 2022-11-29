import 'package:flutter/material.dart';
import 'package:footballresults/controller/api_methods.dart';
import 'package:footballresults/customfile.dart';
import 'package:footballresults/pages/home.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          width: size.width - 30,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(28)),
          child: TextField(
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.5,
            ),
            cursorColor: Colors.black,
            controller: emailController,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Enter email",
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          width: size.width - 30,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(28)),
          child: TextField(
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.5,
            ),
            cursorColor: Colors.black,
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Enter password",
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: (size.width - 80) / 2,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(28)),
                child: MaterialButton(
                  onPressed: () async {
                    AuthenticateUser signup = AuthenticateUser(
                        email: emailController.text,
                        password: passwordController.text);
                    if (await signup.signup()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                      emailController.clear();
                      passwordController.clear();
                    }
                  },
                  child: const Text(
                    "Signup",
                    style: TextStyle(
                        color: white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                )),
            const SizedBox(
              width: 20,
            ),
            Container(
                width: (size.width - 40) / 2,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(28)),
                child: MaterialButton(
                  onPressed: () async {
                    AuthenticateUser signup = AuthenticateUser(
                        email: emailController.text,
                        password: passwordController.text);
                    if (await signup.signin()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                      emailController.clear();
                      passwordController.clear();
                    }
                  },
                  child: const Text(
                    "Signin",
                    style: TextStyle(
                        color: white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                )),
          ],
        )
      ],
    ));
  }
}
