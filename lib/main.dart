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
        ItemTransferencia(Transferencia(100.0,'Conta A')),
        ItemTransferencia(Transferencia(200.0,'Conta B')),
        ItemTransferencia(Transferencia(400.0,'Conta D')),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {

  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.Conta),
        leading: Icon(Icons.monetization_on),
      ),
    );
  }
}

  class Transferencia {
    final double valor;
    final String Conta;

    Transferencia(this.valor, this.Conta);
}
