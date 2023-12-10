import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Singapore extends StatefulWidget {
  const Singapore({super.key});

  @override
  State<Singapore> createState() => _SingaporeState();
}

class _SingaporeState extends State<Singapore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //leading: const Icon(Icons.menu,color: Colors.amber),
          title: const Text('SINGAPORE',
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
                        image: AssetImage('images/singapore.jpg'),
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
                          'Singapore',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                    rows: const <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Capital')),
                          DataCell(Text('SINGAPORE')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Currency')),
                          DataCell(Text('DOLLAR (SGD)')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Population')),
                          DataCell(Text('4,701,069')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Area')),
                          DataCell(Text('693 KM2')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Latitude')),
                          DataCell(Text("1°21'53""N" )),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Longitude')),
                          DataCell(Text("103°49'21""E")),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('National Language')),
                          DataCell(Text('MANDARIN ')),
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
