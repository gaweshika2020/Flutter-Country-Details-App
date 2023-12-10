import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SriLanka extends StatefulWidget {
  const SriLanka({super.key});

  @override
  State<SriLanka> createState() => _SriLankaState();
}

class _SriLankaState extends State<SriLanka> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //leading: const Icon(Icons.menu,color: Colors.amber),
          title: const Text('Sri Lanka',
              style: TextStyle(
                fontWeight: FontWeight.bold,)),
        ),


        body: SingleChildScrollView(
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                child: Material(
                  elevation: 10,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('images/srilanka.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                child : DataTable(
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text(
                        'Country Name',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),

                    DataColumn(
                      label: Text(
                        'SRI LANKA',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                  rows: const <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Capital')),
                        DataCell(Text('COLOMBO')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Currency')),
                        DataCell(Text('RUPEE (LKR)')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Population')),
                        DataCell(Text('21,513,990 ')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Area')),
                        DataCell(Text('65,610 KM2')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Latitude')),
                        DataCell(Text("7°52'26""N")),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Longitude')),
                        DataCell(Text("80°46'1""E")),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('National Language')),
                        DataCell(Text('SINHALA')),
                      ],
                    ),
                  ],
                )
              )



            ],
          ),

        )

    );
  }
}
