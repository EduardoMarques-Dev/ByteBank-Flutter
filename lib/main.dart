import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  const ByteBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  const FormularioTransferencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Criando Transferência'),
        ),
        body: Text('Teste'));
  }
}

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transferências"),
      ),
      body: Column(
        children: <Widget>[
          ItemTransferencia(Transferencia(100.0, 'Conta A')),
          ItemTransferencia(Transferencia(200.0, 'Conta B')),
          ItemTransferencia(Transferencia(400.0, 'Conta D')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
      ),
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
