import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {
  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  var listNama = [
    'Irham',
    'RIZAARDIANSAH ',
    'VIVI TRI RAHAYU SAPUTRI ',
    'LEA DIAN WULANDARI',
    'ABRIZAN CHINTIO YANSO',
  ];
  var listWarna = [
    Colors.red,
    Colors.purple,
    Colors.teal,
    Colors.lime,
    Colors.indigo,
    Colors.deepPurple,
    Colors.cyan,
    Colors.blue,
    Colors.yellow
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Apa kabar',
          textDirection: TextDirection.ltr,
        ),
        Text(listNama[index % listNama.length],
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: listWarna[index % listWarna.length]))
      ],
    );
  }
}

void main() {
  TeksUtama teksUtama = TeksUtama();
  runApp(MaterialApp(
      title: 'Halo Dunia',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Halo Dunia',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: teksUtama,
        ),
        floatingActionButton: FloatingActionButton(
            tooltip: 'Refresh',
            child: Icon(Icons.refresh),
            onPressed: teksUtama.state.incrementIndex,
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape: const CircleBorder()),
      )));
}

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  TeksUtama({super.key});

  @override
  State<StatefulWidget> createState() => state;
}
