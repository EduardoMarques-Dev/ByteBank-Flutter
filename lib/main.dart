import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Transferências"),
        ),
        body: Column(
          children: const [
            Card(
              child: ListTile(
                title: Text("100.0"),
                subtitle: Text("Conta: Abc-123"),
                leading: Icon(Icons.monetization_on),
              ),
            ),Card(
              child: ListTile(
                title: Text("200.0"),
                subtitle: Text("Conta: Abc-123"),
                leading: Icon(Icons.monetization_on),
              ),
            ),Card(
              child: ListTile(
                title: Text("300.0"),
                subtitle: Text("Conta: Abc-123"),
                leading: Icon(Icons.monetization_on),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: null,
        ),
      ),
    ));
