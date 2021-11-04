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
  final TextEditingController _controladorCampoConta = TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Criando Transferência'),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: _controladorCampoConta,
                style: TextStyle(fontSize: 24.0),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Conta',
                  hintText: '0000',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: _controladorCampoValor,
                style: TextStyle(fontSize: 24.0),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  icon: Icon(Icons.monetization_on),
                  labelText: 'Valor',
                  hintText: '0.00',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint('clicou no confirmar');
                final int? conta = int.tryParse(_controladorCampoConta.text);
                final double? valor =
                    double.tryParse(_controladorCampoValor.text);
                if (conta != null && valor != null) {
                  final transferenciaCriada =
                      Transferencia(valor.toDouble(), conta.toInt());
                  debugPrint('$transferenciaCriada');
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$transferenciaCriada'),
                    ),
                  );
                }
              },
              child: Text('Confirmar'),
            ),
          ],
        ));
  }
}

//////////////////////// WIDGETS

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transferências"),
      ),
      body: Column(
        children: <Widget>[
          ItemTransferencia(Transferencia(100.0, 1)),
          ItemTransferencia(Transferencia(200.0, 2)),
          ItemTransferencia(Transferencia(400.0, 3)),
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

//////////////////////// CLASSES

class Transferencia {
  final double valor;
  final int Conta;

  Transferencia(this.valor, this.Conta);

  @override
  String toString() {
    return 'Transferencia{valor: $valor, Conta: $Conta}';
  }
}
