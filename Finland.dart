import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Finland extends StatefulWidget {
  const Finland({super.key});

  @override
  State<Finland> createState() => _FinlandState();
}

class _FinlandState extends State<Finland> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //leading: const Icon(Icons.menu,color: Colors.amber),
          title: const Text('Finland',
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
                        image: AssetImage('images/finland.jpg'),
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
                          'FINLAND',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                    rows: const <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Capital')),
                          DataCell(Text('HELSINKI')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Currency')),
                          DataCell(Text('EURO (EUR))')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Population')),
                          DataCell(Text('5,244,000')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Area')),
                          DataCell(Text('337,030 KM2')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Latitude')),
                          DataCell(Text("64°57'8""N" )),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Longitude')),
                          DataCell(Text(" 26°4'8""E")),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('National Language')),
                          DataCell(Text('FINNISH ')),
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

