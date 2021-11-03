import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Transferências"),
        ),
        body: ListaTransferencias(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: null,
        ),
      ),
    ));

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        ItemTransferencia('100.0','Conta A'),
        ItemTransferencia('200.0','Conta B'),
        ItemTransferencia('300.0','Conta C'),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {

  final String valor;
  final String numeroConta;

  ItemTransferencia(this.valor, this.numeroConta);

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: ListTile(
        title: Text(valor),
        subtitle: Text(numeroConta),
        leading: Icon(Icons.monetization_on),
      ),
    );
  }
  
}
