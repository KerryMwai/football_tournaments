import 'package:flutter/material.dart';
import 'package:footballresults/customfile.dart';

class RegisterTeamPage extends StatefulWidget {
  const RegisterTeamPage({Key? key}) : super(key: key);

  @override
  State<RegisterTeamPage> createState() => _RegisterTeamPageState();
}

class _RegisterTeamPageState extends State<RegisterTeamPage> {
  TextEditingController teamNameController = TextEditingController();
  TextEditingController teammanagerController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Team Registration"),
        centerTitle: true,
      ),
      body: Center(
        child: Center(
            child: Column(
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
                controller: teamNameController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Team name",
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
                controller: teammanagerController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Team location",
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
                    width: (size.width - 70) / 2,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(28)),
                    child: MaterialButton(
                      onPressed: () async {},
                      child: const Text(
                        "Register",
                        style: TextStyle(
                            color: white,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
              ],
            )
          ],
        )),
      ),
    );
  }
}
