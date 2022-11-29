import 'package:flutter/material.dart';
import 'package:footballresults/controller/api_methods.dart';
import 'package:footballresults/customfile.dart';
import 'package:footballresults/pages/tournaments/match_analysis.dart';
import 'package:footballresults/pages/tournaments/post_results.dart';
import 'package:footballresults/pages/tournaments/register_tournament.dart';
import 'package:footballresults/pages/tournaments/schedule_matches.dart';
import 'package:footballresults/pages/tournaments/view_tournament.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Admin"),
          leading: Container(
            margin: const EdgeInsets.all(10),
            width: 30,
            height: 30,
            decoration:
                const BoxDecoration(color: amber, shape: BoxShape.circle),
          ),
          actions: [
            IconButton(
                onPressed: () async {
                  if (await AuthenticateUser.signout()) {
                    Navigator.pop(context);
                  }
                },
                icon: const Icon(Icons.logout))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const RegisterTournamentPage()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    width: (size.width - 40) / 2,
                    height: size.height / 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), color: pink),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Register",
                          style: TextStyle(
                              color: white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Tournament",
                          style: TextStyle(
                              color: white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0),
                        ),
                      ],
                    )),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const ViewTournaments()))),
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    width: (size.width - 40) / 2,
                    height: size.height / 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), color: green),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "View",
                          style: TextStyle(
                              color: white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Tournament",
                          style: TextStyle(
                              color: white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0),
                        ),
                      ],
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ]),
        ));
  }
}
