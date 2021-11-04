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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                style: TextStyle(fontSize: 24.0),
                decoration: InputDecoration(
                  labelText: 'Conta',
                  hintText: 'xx-0000',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                style: TextStyle(fontSize: 24.0),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  icon: Icon(Icons.monetization_on),
                  labelText: 'Valor',
                  hintText: '0.00',
                ),
              ),
            ),
            ElevatedButton(onPressed: null, child: Text('Confirmar')),
          ],
        ));
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
        subtitle: Text(_transferencia.Conta.toString()),
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
