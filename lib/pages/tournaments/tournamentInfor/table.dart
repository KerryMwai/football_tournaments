import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TablePage extends StatefulWidget {
  const TablePage({Key? key}) : super(key: key);

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        child: Table(
            border: TableBorder.all(),
            children: List.generate(15, (index) {
              if (index == 0) {
                return const TableRow(children: [
                  TableCell(
                      child: Center(
                    child: Text(
                      "Team",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1.4),
                    ),
                  )),
                  TableCell(
                      child: Center(
                    child: Text(
                      "MP",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1.4),
                    ),
                  )),
                  TableCell(
                      child: Center(
                    child: Text(
                      "W",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1.4),
                    ),
                  )),
                  TableCell(
                      child: Center(
                    child: Text(
                      "D",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1.4),
                    ),
                  )),
                  TableCell(
                      child: Center(
                    child: Text(
                      "L",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1.4),
                    ),
                  )),
                  TableCell(
                      child: Center(
                    child: Text(
                      "GD",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1.4),
                    ),
                  )),
                  TableCell(
                      child: Center(
                    child: Text(
                      "P",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1.4),
                    ),
                  )),
                ]);
              } else {
                return TableRow(children: [
                  TableCell(
                      child: Center(
                    child: Text(
                      "Name $index",
                      style: const TextStyle(fontSize: 18, letterSpacing: 1.4),
                    ),
                  )),
                  TableCell(
                      child: Center(
                    child: Text(
                      "2$index",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1.4),
                    ),
                  )),
                  TableCell(
                      child: Center(
                    child: Text(
                      "1$index",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1.4),
                    ),
                  )),
                  TableCell(
                      child: Center(
                    child: Text(
                      "$index",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1.4),
                    ),
                  )),
                  const TableCell(
                      child: Center(
                    child: Text(
                      "4",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1.4),
                    ),
                  )),
                  const TableCell(
                      child: Center(
                    child: Text(
                      "16",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1.4),
                    ),
                  )),
                  TableCell(
                      child: Center(
                    child: Text(
                      "4$index",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1.4),
                    ),
                  )),
                ]);
              }
            })),
      ),
    ));
  }
}
