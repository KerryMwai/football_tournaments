import 'package:flutter/material.dart';

class MatchAnalysisPage extends StatefulWidget {
  const MatchAnalysisPage({Key? key}) : super(key: key);

  @override
  State<MatchAnalysisPage> createState() => _MatchAnalysisPageState();
}

class _MatchAnalysisPageState extends State<MatchAnalysisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Match Anlysis")),
    );
  }
}
