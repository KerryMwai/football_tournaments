import 'package:flutter/material.dart';
import 'package:footballresults/customfile.dart';

class TeamsPage extends StatefulWidget {
  const TeamsPage({Key? key}) : super(key: key);

  @override
  State<TeamsPage> createState() => _TeamsPageState();
}

class _TeamsPageState extends State<TeamsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: List.generate(
            15,
            (index) => Card(
                  color: grey,
                  margin: const EdgeInsets.only(
                      top: 15.0, right: 15, left: 15, bottom: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Team name $index",
                          style: const TextStyle(
                              color: white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        const Text(
                          "Manager ",
                          style: TextStyle(
                              color: white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                )),
      ),
    ));
  }
}
