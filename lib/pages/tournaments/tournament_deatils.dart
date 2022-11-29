import 'package:flutter/material.dart';
import 'package:footballresults/pages/tournaments/tournamentInfor/table.dart';
import 'package:footballresults/pages/tournaments/tournamentInfor/teams.dart';
import 'package:footballresults/pages/tournaments/tournamentInfor/update_tournament.dart';

import 'tournamentInfor/matches.dart';

class TournamentDetailsPage extends StatefulWidget {
  TournamentDetailsPage({Key? key}) : super(key: key);
  final List<String> tabTitles = [
    "Update",
    "Teams",
    "Table",
    "Matches",
  ];

  @override
  State<TournamentDetailsPage> createState() => _TournamentDetailsPageState();
}

class _TournamentDetailsPageState extends State<TournamentDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.tabTitles.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tournament name"),
            bottom: TabBar(
              tabs: List.generate(widget.tabTitles.length, (index) {
                return Tab(child: Text(widget.tabTitles[index]));
              }),
            ),
          ),
          body: const TabBarView(children: [
            UpdateTournamentPage(),
            TeamsPage(),
            TablePage(),
            MatchesPage(),
          ]),
        ));
  }
}
