import 'package:flutter/material.dart';

class text extends StatefulWidget {
  const text({super.key});

  @override
  State<text> createState() => _textState();
}

class _textState extends State<text> {
  TextEditingController tc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: tc,
          ),
          ElevatedButton(onPressed: () => logic(tc.text), child: Text('Done'))
        ],
      ),
    );
  }
}

List<String> stat = [];
List word = [
  'CREATE DATABASE',
  'CREATE TABLE',
  'INSERT',
  'INT',
  'PRIMARY KEY',
  'VARCHAR',
];
logic(String a) {
  a = a.replaceAll('  ', ' ');
  print(a);
  stat = a.split(';');
  String A = a.toUpperCase();
  List<String> statement = A.split(';');
  for (int i = 0; i < statement.length; i++)
    if (statement[i].contains('CREATE DATABASE'))
      CR(i);
    else if (statement[i].contains('CREATE TABLE'))
      CT(i);
    else if (statement[i].contains('INSERT'))
      I(i);
    else if (statement[i].contains('INT'))
      INT(i);
    else if (statement[i].contains('PRIMARY KEY'))
      PK(i);
    else if (statement[i].contains('VARCHAR')) VAR(i);
}

CR(int a) {
  print('text : CR');
}

CT(int a) {
  print('CT : $a');
}

I(int a) {
  print('text : I$a');
}

INT(int a) {
  print('text : INT$a');
}

PK(int a) {
  print('text : PK$a');
}

VAR(int a) {
  print('text : VAR$a');
}
