import 'package:flutter/material.dart';
import 'package:footballresults/customfile.dart';

import '../custom_widgets/custom_text_field.dart';

class PostResultsPage extends StatefulWidget {
  const PostResultsPage({Key? key}) : super(key: key);

  @override
  State<PostResultsPage> createState() => _PostResultsPageState();
}

class _PostResultsPageState extends State<PostResultsPage> {
  TextEditingController teamController = TextEditingController();
  TextEditingController goalsController = TextEditingController();
  TextEditingController pointsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text("Update Results")),
      body: Center(
        child: Center(
            child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                    textEditingController: teamController,
                    hintText: "Enter  team"),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                    textEditingController: goalsController,
                    hintText: "Enter goals"),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                    textEditingController: pointsController,
                    hintText: "Enter points"),
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
                            "Update",
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
          ),
        )),
      ),
    );
  }
}
