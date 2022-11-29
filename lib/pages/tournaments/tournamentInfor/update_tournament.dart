import 'package:flutter/material.dart';
import 'package:footballresults/customfile.dart';
import 'package:footballresults/pages/tournaments/match_analysis.dart';
import 'package:footballresults/pages/tournaments/post_results.dart';
import 'package:footballresults/pages/tournaments/schedule_matches.dart';
import 'package:footballresults/pages/tournaments/tournamentInfor/register_team.dart';

class UpdateTournamentPage extends StatefulWidget {
  const UpdateTournamentPage({Key? key}) : super(key: key);

  @override
  State<UpdateTournamentPage> createState() => _UpdateTournamentPageState();
}

class _UpdateTournamentPageState extends State<UpdateTournamentPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: (() => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const RegisterTeamPage()),
                  )),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                width: (size.width - 40) / 2,
                height: size.height / 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: puprle),
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
                      "Team",
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
                      builder: ((context) => const PostResultsPage()))),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                width: (size.width - 40) / 2,
                height: size.height / 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: blue),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Update",
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
                      "Results",
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
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: (() => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const ScheduleMatchesPage()),
                  )),
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
                      "Schedule",
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
                      "Match",
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
      ]),
    ));
  }
}
