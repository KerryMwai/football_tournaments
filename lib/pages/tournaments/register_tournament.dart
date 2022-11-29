import 'package:flutter/material.dart';
import 'package:footballresults/controller/api_methods.dart';
import 'package:footballresults/pages/tournaments/view_tournament.dart';

import '../../customfile.dart';

class RegisterTournamentPage extends StatefulWidget {
  const RegisterTournamentPage({Key? key}) : super(key: key);

  @override
  State<RegisterTournamentPage> createState() => _RegisterTurnamentPageState();
}

class _RegisterTurnamentPageState extends State<RegisterTournamentPage> {
  TextEditingController tournamentNameController = TextEditingController();
  TextEditingController tournamentLocationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 46, 5),
      appBar: AppBar(
        title: const Text("Registering a tournament"),
        backgroundColor: const Color.fromARGB(255, 4, 56, 6),
      ),
      body: Center(
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
              controller: tournamentNameController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Tournament name",
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
              controller: tournamentLocationController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Tounament location",
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
                    onPressed: () async {
                      FirebaseInteraction firebase = FirebaseInteraction();
                      if (await firebase.registerTournament(
                          tname: tournamentNameController.text,
                          tlocation: tournamentLocationController.text)) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const ViewTournaments()));
                        tournamentLocationController.clear();
                        tournamentNameController.clear();
                      }
                    },
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
    );
  }
}
