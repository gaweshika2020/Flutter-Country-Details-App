import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Italy extends StatefulWidget {
  const Italy({super.key});

  @override
  State<Italy> createState() => _ItalyState();
}

class _ItalyState extends State<Italy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //leading: const Icon(Icons.menu,color: Colors.amber),
          title: const Text('Italy',
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
                        image: AssetImage('images/italy.jpg'),
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
                          'ITALY',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                    rows: const <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Capital')),
                          DataCell(Text('ROME')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Currency')),
                          DataCell(Text('EURO (EUR)')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Population')),
                          DataCell(Text('60,340,328')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Area')),
                          DataCell(Text('301,230 KM2')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Latitude')),
                          DataCell(Text("41°52'26""N " )),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Longitude')),
                          DataCell(Text("12°33'50""E")),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('National Language')),
                          DataCell(Text('ITALIAN ')),
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
