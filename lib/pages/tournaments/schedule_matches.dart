import 'package:flutter/material.dart';
import 'package:footballresults/customfile.dart';
import 'package:footballresults/pages/custom_widgets/custom_text_field.dart';

class ScheduleMatchesPage extends StatefulWidget {
  const ScheduleMatchesPage({Key? key}) : super(key: key);

  @override
  State<ScheduleMatchesPage> createState() => _ScheduleMatchesPageState();
}

class _ScheduleMatchesPageState extends State<ScheduleMatchesPage> {
  TextEditingController teamAController = TextEditingController();
  TextEditingController teamBController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController venueController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text("Schedulling")),
      body: Center(
        child: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                  textEditingController: teamAController,
                  hintText: "Enter home team"),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                  textEditingController: teamBController,
                  hintText: "Enter away team"),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                  textEditingController: dateController,
                  hintText: "Enter date"),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                  textEditingController: timeController,
                  hintText: "Enter time"),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                  textEditingController: venueController,
                  hintText: "Enter venue"),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: (size.width - 70) / 2,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
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
          ),
        )),
      ),
    );
  }
}
