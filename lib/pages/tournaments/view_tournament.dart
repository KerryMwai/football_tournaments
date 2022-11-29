import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:footballresults/customfile.dart';

import 'package:footballresults/pages/tournaments/tournament_deatils.dart';

class ViewTournaments extends StatefulWidget {
  const ViewTournaments({Key? key}) : super(key: key);

  @override
  State<ViewTournaments> createState() => _ViewTournamentsState();
}

class _ViewTournamentsState extends State<ViewTournaments> {
  final Stream<QuerySnapshot> _tournaments =
      FirebaseFirestore.instance.collection('tournaments').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tournaments")),
      body: SingleChildScrollView(
          child: StreamBuilder(
        stream: _tournaments,
        builder: ((context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text(
              "Something went wrong",
              style: TextStyle(
                  fontSize: 23, fontWeight: FontWeight.bold, color: Colors.red),
            );
          }
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return Column(
            children: List.generate(snapshot.data!.docs.length, (index) {
              DocumentSnapshot documentSnapshot = snapshot.data!.docs[index];
              return InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TournamentDetailsPage(),
                  ),
                ),
                child: Card(
                  color: black.withOpacity(0.7),
                  margin: const EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          documentSnapshot['tournament'],
                          style: const TextStyle(
                              color: white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          documentSnapshot['location'],
                          style: const TextStyle(
                              color: white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          );
        }),
      )),
    );
  }
}



// Column(
//           children: List.generate(
//               20,
//               (index) => InkWell(
//                     onTap: () => Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (_) => TournamentDetailsPage(),
//                       ),
//                     ),
//                     child: Card(
//                       color: black.withOpacity(0.7),
//                       margin: const EdgeInsets.all(10),
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: const [
//                             Text(
//                               "Tour Name",
//                               style: TextStyle(
//                                   color: white,
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             Text(
//                               "Location",
//                               style: TextStyle(
//                                   color: white,
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   )),
//         ),